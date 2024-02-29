#git setup####
#Set your Git user name and email from within R:
#https://hugo-apero-docs.netlify.app/start/setup/

library(usethis)
use_git_config(user.name = "adriengelle", user.email = "adriengelle@gmail.com")

usethis::create_github_token()
#highly recommend selecting “repo”, “user”, and “workflow”. Recommended scopes will be pre-selected if you used create_github_token().
#Click “Generate token”.

#Copy the generated PAT to your clipboard. Or leave that browser window open and available for a little while, 
#so you can come back to copy the PAT.

gitcreds::gitcreds_set() #paste your PAT

usethis::git_sitrep()

#1. Set up####
#https://hugo-apero-docs.netlify.app/start/setup/
#packages
install.packages("blogdown")
blogdown::install_hugo()
install.packages("xfun")


#2. Create your site####
#https://hugo-apero-docs.netlify.app/start/create-site/

#create site (use hugo-apero theme)
library(blogdown)
new_site(theme = "hugo-apero/hugo-apero", 
           format = "toml",
           sample = FALSE,
           empty_dirs = TRUE)

#3. Site configuration####
#https://hugo-apero-docs.netlify.app/start/site-config/

#site configuration options are found in the config.toml file at the root of this Hugo site
#A few Hugo-defined variables are included the example site’s config.toml file. You can find a complete list in the Hugo docs:
#https://gohugo.io/getting-started/configuration/#all-configuration-settings
#Some key ones you’ll want to edit:
baseURL = "/"
title = "Adrien Gelle website"
author = "Adrien Gelle"
# set deliberately low for testing- choose your preferred number 
paginate = 5

#To start a local preview: use blogdown::serve_site(), or the RStudio add-in "Serve Site"
#To stop a local preview: use blogdown::stop_server(), or restart your R session
blogdown::serve_site()#start
blogdown::stop_server()#stop

#Check your configuration file
#The blogdown R package has a checking function to help you make sure that your configuration 
#file has all the fiddly bits right.
blogdown::check_config()

#4. Deploy your site####
usethis::browse_github()#load where the repository is associated on GitHub

#Netlify
#Let’s check this file with blogdown
blogdown::check_netlify()

#5: Section configuration####
#https://hugo-apero-docs.netlify.app/start/section-config/?panelset=talk-%25F0%259F%2593%25B7


#6 Page configuration#####
#https://hugo-apero-docs.netlify.app/start/page-config/



