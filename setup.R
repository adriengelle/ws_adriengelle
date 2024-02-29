#1. Set up####
#https://hugo-apero-docs.netlify.app/start/setup/
#packages
usethis::git_sitrep()
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



