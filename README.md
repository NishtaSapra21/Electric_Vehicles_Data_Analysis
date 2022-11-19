# Electric Vehicles Data Analysis

## Overview

  Having potential benefits like significantly fewer emissions, lower repair and maintenance costs, cheaper to fuel than conventional gas vehicles, electric vehicles     are getting popularity all over the world. This project analyzes sales of different EVs all over world, USA and Oregon. This analysis also shows how fuel prices       changes through years and how that affects current EV market.  The purpose is to understand EV sales through a decade and predict future vehicle market for EVs and     their manufactures. Also, EV charging more and more stations are available, a Leaflet map using Mapbox API shows EV charging station’s locations in Oregon. 

## Software and Tools 
  * Python and Pandas
  * Postgres SQL
  * Leaflet, Mapbox
  * HTML, CSS, JavaScript with Flask
  * Sci-Kit Learn

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



### Module -4: Machine Learning (Logistic Regression, SVM, Forest, Neural Network)

  Here, the data has been trained to predict whether the vehicle will have “SmartWay” certificate or not. From the fuel type , greenhouse gas score and CO2 , logistic   regression model predicts whether the vehicle is “SMART” or not. Here input variables are fuel type, greenhouse gas score and Co2 emission and predict variable is     SmarWay. The model has been trained , scaled to perform logistic regression as well as other different machine learning techniques, Support Vector     Machine ,       Random Forest and Neural Network.
  
  Here, __“Fuel”__ column is categorical, so it is __encoded__ using __“One Hot Encoding”__ . 
  
  ![Fuel_Encoding](https://user-images.githubusercontent.com/107717882/202874546-49395338-5869-4598-893d-e1c6a7228a59.png)

  Following screen shots show that  __Logistic Regression Model__  has __92%__ of accuracy, __SVM__ has __95%__ of accuracy, __Random Forest Model__ has __96%__ of       accuracy and __Neural Network__ has __95%__ of accuracy.  Here, best model is __Random Forest_Model__. 
  
  ![classification_report](https://user-images.githubusercontent.com/107717882/202874566-8efa7515-3d08-405a-9c23-e0d5d80eaab9.png)

  ![svm_model_accuracy](https://user-images.githubusercontent.com/107717882/202874577-fd4991e4-7cc2-4978-9462-9d796bfe3361.png)
  
  ![random_forest_accuracy](https://user-images.githubusercontent.com/107717882/202874589-a27b712e-bff7-46e5-838e-5f51ee3353a4.png)

  ![nnmodel_accuracy](https://user-images.githubusercontent.com/107717882/202874595-76520da7-4363-4279-9900-0eaa3ee8904a.png)
  
  
## Summary 

### Conclusion 
  All data, results, graphs and maps show that this is the era of EV. From last ten years, EV sales increases tremendously in USA as well as all over the world. 
  
  Increasing gas prices and pollution are main reasons people are buying EVs. There are more models were introduced during last five years from different makers. This   might lead to price reduction of vehicles. Tesla is highly liked by the US people but Nissan Leaf is highly affordable. With rising government support and consumers   embracing electric vehicles, EV will rule the market for at least for few years. 

### Key Findings


## Future Analysis/Improvement 

  * Extracting more detailed data about EV performance.
  * Developing more efficient AI models to predict whether the vehicle reach to destination with available battery or not. 
  * Adding more smooth display to HTML and CSS, specifically machine learning prediction. 
  
## Coding References 

## Citation  
