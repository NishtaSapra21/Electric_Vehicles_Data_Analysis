# Electric Vehicles Data Analysis

## Overview

  Having potential benefits like significantly fewer emissions, lower repair and maintenance costs, cheaper to fuel than conventional gas vehicles, electric vehicles     are getting popularity all over the world. This project analyzes sales of different EVs all over world, USA and Oregon. This analysis also shows how fuel prices       changes through years and how that affects current EV market.  The purpose is to understand EV sales through a decade and predict future vehicle market for EVs and     their manufactures. Also, EV charging more and more stations are available, a Leaflet map using Mapbox API shows EV charging station’s locations in Oregon. 

## Software and Tools 
  * Python and Pandas
  * Postgres SQL
  * Leaflet, Mapbox
  * HTML, CSS, JavaScript with Flask
  * Sci-Kit Learn

## Presentation Slides and Video

  * PPT Presentation
  * Presentation Video
  
  
## Modules

There are __four__ main modules, let’s have a detailed look of each module.

### Module -1: Extract Transform Load (Python, Pandas, SQL)
  Data collection is very important and crucial part of any data analysis. There are lots paid and little less free of datasets are available for __Electric Vehicles__   . All the data are collected from different government public data sources and private data sources. 
  
  Using Pandas DataFrames all CSVs are cleaned by dropping NULLs , converting datatypes for better analysis and machine learning, having proper columns names,           replacing NULL values with appropriate data for calculations and plotting graphs. One cleaning python script is developed, so by importing it all common cleaning       function can be done on any CSVS. 
  
  Cleaned CSVs are loaded in SQL tables to perform queries, joins to have new tables and export those tables as CSVs for more analysis, visualizations and machine       learning. 
  
  Here is the list of CSVs:
  
   * [ev_sales_world.csv](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/CSVs/clean_datasets/ev_sales_world.csv)
   * [ev_sales_usa.csv](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/CSVs/clean_datasets/ev_sales_usa.csv)
   * [ev_sales_or_large.csv](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/CSVs/clean_datasets/ev_sales_or_large.csv)
   * [alt_fuel_stations_or.csv](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/CSVs/clean_datasets/alt_fuel_stations_or.csv)
   * [fuel_prices.csv](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/CSVs/clean_datasets/fuel_prices.csv)
   * [all_alpha_22.csv](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/CSVs/all_alpha_22.csv)
  
  
### Module-2: Visualizations (Matplotlib, Tableau)

   Visualizations help for more detail analysis clear predictions. Let’s have a look at few graphs and charts for EV sales for world, top EV model sales in USA , fuel    prices, EV model sales countywide and state wise in Oregon etc. using Matplotlib and Tableau. 
   
   ![Tableau_Viz](https://user-images.githubusercontent.com/107717882/202873152-b9828fa7-36b3-4a3d-8eaa-35abe4f6dfc4.png) 
   
   Click  [EV Tabelau Story](https://public.tableau.com/views/EVAnalysis_16681221169090/EVAnalysis?:language=en-US&:display_count=n&:origin=viz_share_link) to            visualize entire Tableau story of EV Analysis. 
   

### Module- 3: APIs and JavaScript (Leaflet, Mapbox, Flask)

  APIs are most powerful tool today in Data Science to extract data and allow technologies to talk to each other to present Maps, Graphs. Here, Leaflet map is used       with Mapbox API  to show all locations of EV charging stations in Oregon. 
  
  ![Screenshot (171)](https://user-images.githubusercontent.com/107717882/202874239-02f764ad-eaf0-4d16-a971-6ae03efd7b23.png)

  Using Python module , Flask, a web framework , Leaflet map is displayed. However, Flask is easy web application, a webpages have been designed with HTML,CSS,           JavaScript to display TOP EV sales USA, Tableau story, Leaf let map for EV stations in Oregon and vehicle will have "SmartWay" certificate or not  prediction by       machine learning. 

  Following webpage displaying  __Top EV Sales USA__ using  HTML.CSS and .js file with Flask and JavaScript. 
  
  ![ev_usa_table](https://user-images.githubusercontent.com/107717882/202874250-d1888e51-1957-4fa8-9861-b6a200bfe2d0.png)



### Module -4: Machine Learning (Logistic Regression, SVM, Random Forest, Neural Network)

  Here, the data has been trained to predict whether the vehicle will have “SmartWay” certificate or not. From the fuel type , greenhouse gas score and CO2 , logistic   regression model predicts whether the vehicle will have "SmartWay" or not. Here input variables are fuel type, greenhouse gas score and Co2 emission and predict       variable is SmarWay. The model has been trained , scaled to perform logistic regression as well as other different machine learning techniques, Support Vector         Machine , Random Forest and Neural Network.
  
  ![smartway1](https://user-images.githubusercontent.com/107717882/202876830-a9584ad9-dc82-47c0-b067-bd8e14641a96.png)![smartway2](https://user-images.githubusercontent.com/107717882/202876909-e3025c7a-1ff3-48b9-9af9-caad8cdaa881.png)

  
  Here, __“Fuel”__ column is categorical, so it is __encoded__ using __“One Hot Encoding”__ . 
  
  ![Fuel_Encoding](https://user-images.githubusercontent.com/107717882/202874546-49395338-5869-4598-893d-e1c6a7228a59.png)
  
  Following screen shots show that  __Logistic Regression Model__  has __92%__ of accuracy, __SVM__ has __95%__ of accuracy, __Random Forest Model__ has __96%__ of       accuracy and __Neural Network__ has __95%__ of accuracy.  Here, best model is __Random Forest_Model__. 
  
  ![classification_report](https://user-images.githubusercontent.com/107717882/202874738-02f4c65c-bbdf-4939-bb7c-7ab81a06389e.png)
  
  ![logi_reg](https://user-images.githubusercontent.com/107717882/202875248-d756958b-c080-47c2-8748-e04bfe13034a.png)
  
  ![svm_model_accuracy](https://user-images.githubusercontent.com/107717882/202875256-e6d36d37-ce09-4001-a63d-05aafb6eec01.png)

  ![rand_fore](https://user-images.githubusercontent.com/107717882/202875264-763214e2-da79-4ce1-8b76-48f87bd5f198.png
  
  ![nn_model1](https://user-images.githubusercontent.com/107717882/202875410-2a1c6079-e58d-449d-a606-97c32e8fb65a.png)

  ![nn_model2](https://user-images.githubusercontent.com/107717882/202875415-49cab617-cce2-4dc1-89cb-18b4fff26014.png)
  
  
## Summary 

### Conclusion 

  All data, results, graphs and maps show that this is the era of EV. From last ten years, EV sales increases tremendously in USA as well as all over the world. 
  
  Increasing gas prices and pollution are main reasons people are buying EVs. There are more models were introduced during last five years from different makers. This   might lead to price reduction of vehicles. Tesla is highly liked by the US people but Nissan Leaf is highly affordable. With rising government support and consumers   embracing electric vehicles, EV will rule the market for at least for few years. 

### Key Findings

  * __Tesla Model 3__ is most popular and sold model during 2018 and 2019 in USA.
    
    ![max_sales_usa_models](https://user-images.githubusercontent.com/107717882/202875815-4c7c6534-0ed6-481e-b3b0-45ae1e74a78d.png)

    
  * __Tesla__ is the number one to sold Model 3 in __Oregon__, __Nissan Leaf__ is the second large seller of EV in Oregon. 

    ![top_5_model_or](https://user-images.githubusercontent.com/107717882/202875822-a897efe6-9262-476b-a990-13f98328acc3.png)
    
  * Huge increase in __Gasoline Price__ made a trend to buy EVs. 

    ![Fuel_prices_Changes](https://user-images.githubusercontent.com/107717882/202875950-211c48f0-c1cd-49f0-a8a1-9c2182b7a85f.png)
    
  * __China__ has the largest and fastest-growing EV market in the world.

    ![chinatopev](https://user-images.githubusercontent.com/107717882/202929252-499ab1d0-fea7-42bf-a851-885395b95a68.png)
    
  * Oregon has __956__ EV charging stations. 

    ![noofstationsor](https://user-images.githubusercontent.com/107717882/202931263-5f3e3545-c409-4f13-be12-9cf8e7ab4fc2.png)


## Future Analysis/Improvement 

  * Extracting more detailed data about EV performance.
  * Developing more efficient AI models to predict whether the vehicle reach to destination with available battery or not. 
  * Adding more smooth display to HTML and CSS, specifically machine learning prediction. 
  
## Coding References 

  1. [Alternative_Fuel_Stations_OR.ipynb](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/Alternative_Fuel_Stations_OR.ipynb)
  2. [World_EV_Sales.ipynb](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/World_EV_Sales.ipynb)
  3. [USA_EV_Sales.ipynb](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/USA_EV_Sales.ipynb)
  4. [OR_EV_Sales_Large.ipynb](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/OR_EV_Sales_Large.ipynb)
  5. [Fuel_Prices_Over_The_Years.ipynb](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/Fuel_Prices_Over_The_Years.ipynb)
  6. [SamrtWay_Logistic_Regression.ipynb](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/SamrtWay_Logistic_Regression.ipynb)
  7. [SmartWayNN.ipynb](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/SmartWayNN.ipynb)
  8. [create_table.sql](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/create_table.sql)
  9. [sql_query.sql](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/sql_query.sql)
  10. [sql_procedure.sql](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/sql_procedure.sql)
  11. [data_cleaning.py](https://github.com/NishtaSapra21/Electric_Vehicles_Data_Analysis/blob/main/Code/data_cleaning.py)

## Citation  

  * https://www.oregon.gov/energy/
  * https://catalog.data.gov/
  * https://afdc.energy.gov/
  * https://fueleconomy.gov/
