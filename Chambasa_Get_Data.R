# install postgreSQL, install.packages("foo", dependencies=...)
install.packages("RPostgreSQL")
install.packages("devtools")
library(devtools)

install.packages("/Users/brianjenquist/GitHub/gemtraits", type="source", repos=NULL)

library(gemtraits)

# See instructions in R package gemtraits.pdf

# first thing that you do is to create a connection with the database
# type con = connect_gemtraits_db()

con <- connect_gemtraits_db()

#queries run by commands in the R file db_queries.r
#trees_crowns = get_trees_with_crowns(con)
trees_dbh <- get_trees_with_dbh(con)

#Get branch and leaf chemistry data and the associated branch light data
con <- connect_gemtraits_db()
chem_with_light <- get_branch_and_leaf_chem_with_light(con)

#Get Carnegie chemistry data

con <- connect_gemtraits_db()
carnegie_chem <- get_carnegie_chem(con)

# Get data associated with leaf parts: photosynthesis, arizona chemistry, sizes/weights, and venation data
con <- connect_gemtraits_db()
leaf_parts <- get_leaf_parts(con)

#Get photosynthesis, Arizona chemistry, and SLA data

con <- connect_gemtraits_db()
photosyn_sla <- get_photosyn(con)

#Get a dataframe of all trees in both GEM Carbon and GEM Traits
con <- connect_gemtraits_db()
trees <- get_trees_with_gem(con)


# A dataframe of all trees
con <- connect_gemtraits_db()
trees <- get_trees(con)

#Get a dataframe of all trees in both GEM Carbon and GEM Traits along with all DBHs
#get_trees_with_latest_dbh for getting trees with just the most recent DBH measurement 
con <- connect_gemtraits_db()
trees_dbh <- get_trees_with_dbh(con)
trees_dbh_latest <- get_trees_with_latest_dbh(con)


LeafChem = get_leaf_chemistry(con)
WoodDensity = get_wood_density(con)
LeafParts = get_leaf_parts(con)
