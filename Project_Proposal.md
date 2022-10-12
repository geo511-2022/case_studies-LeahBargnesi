Prevalence of Community Gardens and/or Fridges in Food Insecure Areas in
Buffalo, NY
================
Leah Bargnesi

[<i class="fa fa-file-code-o fa-1x" aria-hidden="true"></i> Download
this file as a
template](http://adamwilson.us/SpatialDataScience/scripts/Project_ProposalTemplate.Rmd).

# Introduction to problem/question

Food Insecurity is a serious issue that affects 10.5% of America as of
2019, according to NPR (2020). Additionally, due to systemic racism,
Black and Hispanic Americans are twice as likely to face food insecurity
compared to their white counterparts. Particularly, for Erie County,
Feeding America (2020) states that 12% of residents are food insecure
(110,390 individuals). Community efforts to support Buffalo and Erie
County residents have taken the form of urban agriculture and community
fridges. Besides food provisioning, studies have also shown many other
social perks such as recreational benefits and a decrease in crime (Hess
and Winner, 2007).

# Problem / Question

How has access to community gardens and fridges improved food security
in Buffalo, NY and surrounding areas?

# Inspiring Examples

## Example 1

![Buffalo Go Green is an organization in Buffalo that has a community
garden in the East Side of Buffalo, and works with other organizations
across Buffalo to provide food security to
residents](https://i0.wp.com/buffalogogreen.org/wp-content/uploads/2022/04/UrbanFarm.jpg?w=500&ssl=1)

Buffalo Go Green is an organization in Buffalo that has a community
garden in the East Side of Buffalo, and works with other organizations
across Buffalo to provide food security to residents

## Example 2

![This is an example of a map made by researchers at UB that shows food
resources in Buffalo. This is along the lines of what I would like to
produce with the additional feature of mapping food
security](https://www.buffalorising.com/wp-content/uploads/2020/04/Food-Map-Buffalo-NY-730x419.png)
This is an example of a map made by researchers at UB that shows food
resources in Buffalo. This is along the lines of what I would like to
produce with the additional feature of mapping food security

## Example 3

![This is an interactive map created by Feeding America where you can
see levels of food insecurity in each state and county. This is a map of
the united states. I was able to get the data for Erie County from this
organization, and will be using their data for food
insecurity.](https://blog.richmond.edu/livesofmaps/files/2017/02/Feeding-America-Map-768x613.png)
This is an interactive map created by Feeding America where you can see
levels of food insecurity in each state and county. This is a map of the
united states. I was able to get the data for Erie County from this
organization, and will be using their data for food insecurity.

# Proposed data sources

I was able to gather two data sets from Feeding America on food
insecurity. They are CSV files, and list data for food security in Erie
County for all ages and then also for senior citizens. This data is from
2009-2020. I also found a CSV file that lists community fridges in
Buffalo and surrounding areas. I am expecting to get a data set from
Buffalo food lab on community gardens in Buffalo. I have contacted them
in regards to using their data set, but have not yet heard anything. I
will try emailing them again, and if that doesn’t work. I can use their
data on their website of community gardens and create my own csv file
with a list of community gardens.

# Proposed methods

My goal is to make a map that highlights food security from 2009 to 2020
with points on the map where each garden and fridge is, and maybe also
see what year they were put in place. I will have to filter out the data
sets for Buffalo, NY and surrounding areas. After researching which
packages are best for creating interactive maps, I found that the
“leaflet” package will be helpful. Also I will most likely use “rgdal”
and “raster” packages to analyze the geospatial data. For vector data,
“rgdal” is useful and for raster data, the “raster” package.

# Expected results

I would like to produce an interactive map where you can hover over
locations and see the correlation of food resources and security. I
would like to make visible how food security has changed with community
efforts in implementing community gardens fridges. It can also give
insight on where there is still a high need for support.

# Sources

Hess, D., & Winner, L. (2007). Enhancing Justice and Sustainability at
the Local Level: Affordable Policies for Urban Governments\*. Local
Environment, 12(4), 379–395. <https://doi.org/10.1080/13549830701412489>

Overall (all ages) Hunger & Poverty in the United States \| Map the Meal
Gap. (n.d.). Retrieved October 11, 2022, from
<https://map.feedingamerica.org>

Silva, C. (2020, September 27). Food Insecurity In The U.S. By The
Numbers. NPR.
<https://www.npr.org/2020/09/27/912486921/food-insecurity-in-the-u-s-by-the-numbers>
