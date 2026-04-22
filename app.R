library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "My Resume"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("About Me", tabName = "about"),
      menuItem("Experience", tabName = "experience"),
      menuItem("Education", tabName = "education"),
      menuItem("Technical Skills", tabName = "skills"),
      menuItem("Projects", tabName = "projects"),
      menuItem("Contact", tabName = "contact")
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "about",
              h1("About Me"),
              p("Hi my name is Connor Kerr. I’m a Business Analyst and a graduate of the University of Tennessee, where I earned a Bachelor's degree in Business Analytics with a concentration in Information Management and a minor in Data Science. I’m passionate about using data to uncover insights, improve processes, and support strategic decision-making."),
              p("In my current role, I collect, analyze, and interpret data to help guide business strategy and operational improvements. I design and maintain dashboards, track key performance indicators, and contribute to financial modeling, forecasting, and budgeting. My experience with market research and competitor analysis allows me to support data-driven, forward-looking business decisions."),
              p("Alongside my professional work, I’ve serve as a Sport Official and Supervisor, where I develop and lead recreational programs, leagues, and events for a wide range of participants. This experience has strengthened my leadership, communication, and organizational skills."),
              p("I’m driven by curiosity, continuous learning, and the opportunity to make a meaningful impact through data.")
      ),
      
      tabItem(tabName = "experience",
              h1("Experience"),
              h4("Business Analyst - Kano Laboratories (Apr 2025 - Present)"),
              p("•	Collect, analyze, and interpret data to support business decision-making and strategic planning."),
              p("•	Collaborate with stakeholders to identify inefficiencies and recommend process improvements in manufacturing, supply chain, and sales operations."),
              p("•	Create and maintain reports, dashboards, and documentation to track KPIs and operational performance."),
              p("•	Assist in the development of financial models, forecasting, and budgeting."),
              p("•	Conduct market research and competitor analysis to inform business strategy."),
              h4("Sport Official & Supervisor - Williamson County Government (Aug 2024 - Present)"),
              p("•	Develop, implement, and oversee recreational programs, events, and activities for various age groups and interests, such as sports leagues, fitness classes, outdoor activities, summer camps, and cultural events."),
              h4("Field Sales & Marketing Representative - Techtronic Industries (Apr 2024 - Apr 2025)"),
              p("•	Identify trends, patterns, and outliers in store data to understand which products are selling well, which customer segments are most profitable, and how sales performance varies over time across different store locations."),
              p("•	Assist with inventory management tasks, such as receiving shipments, restocking shelves, and conducting inventory counts."),
              p("•	Maintain the cleanliness and organization of the store environment, including tidying up displays, keeping aisles clear, and ensuring merchandise is properly stocked and labeled.")
      ),
      
      tabItem(tabName = "education",
              h1("Education"),
              h3("University of Tennessee, Knoxville"),
              h4("Major: Business Analytics"),
              h4("Minor: Data Science"),
              h4("Concentration: Information Management"),
              p("Activities and Societies: Web Development Club, Management Society, Volunteers for Christ")
      ),
      
      tabItem(tabName = "skills",
              h1("Technical Skills"),
              h3("Programming Languages"),
              tags$ul(
                tags$li("R, Python, SQL, VBA"),
              ),
              h3("Data Analysis Tools"),
              tags$ul(
                tags$li("Excel, Tableau, Power BI"),
              ),
              h3("Statistical Analysis Tools"),
              tags$ul(
                tags$li("Rstudio, Python, MATLAB"),
              ),
              h3("Database Management Tools"),
              tags$ul(
                tags$li("SQL, Oracle, MongoDB"),
              ),
              h3("Application Development"),
              tags$ul(
                tags$li("Unity, Unreal Engine, Xcode"),
              )
      ),
      
      tabItem(tabName = "projects",
              h1("Projects"),
              h4("Movie Recommendation App", actionButton(inputId = "MovieApp",label = "Link to Application", onclick = "window.open('https://connorkerr.shinyapps.io/MovieRecApp/', '_blank')")),
              p("Shiny App that recommends movies to the user based on the following inputs: Movies the user likes, how confident the user wants the recommendation to be, how popular the movies recommended can be, and how many recommendations the user wants."),
              h4("YouTube Trending Dashboard", actionButton(inputId = "YouTubeDash",label = "Link to Dashboard", onclick = "window.open('https://public.tableau.com/app/profile/connor4536/viz/Mini4Target1_YouTube/Dashboard1', '_blank')")),
              p("A Tableau Dashboard breaking down 7 months of daily trending YouTube videos across 10 countries from 2017-2018."),
              h4("Business Analytics Time Series App", actionButton(inputId = "BSApp",label = "Link to Application", onclick = "window.open('https://connorkerr.shinyapps.io/BusinessAnalyticsAndDataScienceTrends/', '_blank')")),
              p("Shiny App showing the trends in google searches for Business Analytics & Data Science through time series data visuals."),
              h4("NCAA MBB App", actionButton(inputId = "NCAAMbbApp",label = "Link to Application", onclick = "window.open('https://connorkerr.shinyapps.io/NCAA_data_2013-2019/', '_blank')")),
              p("Shiny App showing every teams trend in wins over the years of 2013-2019, as well as shows every team's seed (1-16) for the march madness tournaments."),
              h4("KickStarter Project Dashboard", actionButton(inputId = "KickStarterDash",label = "Link to Dashboard", onclick = "window.open('https://public.tableau.com/app/profile/connor4536/viz/KickStarter_Breakdown/Dashboard1', '_blank')")),
              p("A Tableau Dashboard breaking down every KickStarter project in 2016 & 2017."),
      ),
      
      tabItem(tabName = "contact",
              h1("Contact Me"),
              p("Email: connorpkerr@gmail.com"),
              p("LinkedIn:", actionButton(inputId = "BSApp",label = "Go to my LinkedIn Page", onclick = "window.open('https://www.linkedin.com/in/connorkerr123/', '_blank')")),
              p("GitHub:", actionButton(inputId = "BSApp",label = "Go to my GitHub Account", onclick = "window.open('https://github.com/ConnorKerr', '_blank')")),
              p("Tableau Public:", actionButton(inputId = "BSApp",label = "Go to my Tableau Public Account", onclick = "window.open('https://public.tableau.com/app/profile/connor4536/vizzes', '_blank')")),
      )
    )
  )
)

server <- function(input, output ) {}

shinyApp(ui, server)
