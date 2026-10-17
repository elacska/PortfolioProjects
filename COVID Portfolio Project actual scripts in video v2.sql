--SELECT * --
--FROM public.covidvaccinations--
--ORDER BY 3,4;--

SELECT * 
FROM public.coviddeaths
WHERE continent is not null
ORDER BY 3,4;

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM public.coviddeaths
WHERE continent is not null
ORDER BY 1,2;

-- looking at total cases vs total deaths
-- shows likelihood of dying if you contract covid in your country

SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM public.coviddeaths
WHERE location ILIKE '%states%'
-- or WHERE location ILIKE '%spain%'
and continent is not null
ORDER BY 1,2;

-- looking at total cases vs population
-- shows what percentage of population got covid

SELECT location, date, population, total_cases, (total_cases/population)*100 as PercentPopulationInfected
FROM public.coviddeaths
-- WHERE location ILIKE '%states%'
-- WHERE location ILIKE '%spain%'
WHERE continent is not null
ORDER BY 1,2;

-- looking at countries with highest infection rate compared to population

SELECT location, population, MAX(total_cases) as HighestInfectionCount, MAX((total_cases/population))*100 as PercentPopulationInfected
FROM public.coviddeaths
-- WHERE location ILIKE '%states%'
-- WHERE location ILIKE '%spain%'
WHERE continent is not null
GROUP BY location, population
ORDER BY PercentPopulationInfected desc;

-- showing countries with highest death count per population

SELECT location, MAX(total_deaths) as TotalDeathCount
FROM public.coviddeaths
-- WHERE location ILIKE '%states%'
-- WHERE location ILIKE '%spain%'
WHERE continent is not null
GROUP BY location
ORDER BY TotalDeathCount desc;

-- let's break things down by continent

SELECT location, MAX(total_deaths) as TotalDeathCount
FROM public.coviddeaths
-- WHERE location ILIKE '%states%'
-- WHERE location ILIKE '%spain%'
WHERE continent is null
GROUP BY location
ORDER BY TotalDeathCount desc;

-- showing continents with the highest death count

SELECT continent, MAX(total_deaths) as TotalDeathCount
FROM public.coviddeaths
-- WHERE location ILIKE '%states%'
-- WHERE location ILIKE '%spain%'
WHERE continent is not null
GROUP BY continent
ORDER BY TotalDeathCount desc;

-- global numbers

SELECT date, SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage --, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM public.coviddeaths
--WHERE location ILIKE '%states%'
-- or WHERE location ILIKE '%spain%'
where continent is not null
group by date
ORDER BY 1,2;

SELECT SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage --, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM public.coviddeaths
--WHERE location ILIKE '%states%'
-- or WHERE location ILIKE '%spain%'
where continent is not null
--group by date
ORDER BY 1,2;

-- join

select *
from public.coviddeaths dea
join public.covidvaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date

-- looking at total population vs vaccinations
-- with sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) every new vaccination
--is sum up to the total vaccination number before

select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
from public.coviddeaths dea
join public.covidvaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
order by 2,3

--show the code separately
-- we need to see how many percentage of the population are vaccinated in x day

select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
from public.coviddeaths dea
join public.covidvaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
order by 2,3

-- USE CTE

with PopvsVac (continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
as
(
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
from public.coviddeaths dea
join public.covidvaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3
)
select *, (RollingPeopleVaccinated/population)*100
from PopvsVac

--temp table

drop table if exists PercentPopulationVaccinated

create table PercentPopulationVaccinated
(
continent VARCHAR(255), 
location VARCHAR(255), 
date DATE, 
population NUMERIC, 
new_vaccinations NUMERIC, 
RollingPeopleVaccinated NUMERIC
)

insert into PercentPopulationVaccinated
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
from public.coviddeaths dea
join public.covidvaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
--where dea.continent is not null
--order by 2,3

select *, (RollingPeopleVaccinated/population)*100
from PercentPopulationVaccinated

--creating view to store data for later visualizations

create view PercentPopulationVaccinatedView as
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
from public.coviddeaths dea
join public.covidvaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3

select *
from PercentPopulationVaccinatedView




