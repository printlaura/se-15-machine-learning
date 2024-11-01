# Project: Clustering of ASINs

## Context

The company for which this project is developed buys and scales Amazon businesses (*brands*). It acts as an eCommerce aggregator that sells around 47,000 different products (*ASINs*) from a variety of categories, sub categories and brands. At the moment, the Planning & Pricing team from the Commercial department (the *stakeholders*) does sales forecasting and pricing manually, using a formula that only captures seasonality. Having such a variety of products in our portfolio, this method entails a big error margin. There is currently no room (or human capacity) for analyzing sales patterns - other than the seasonal factor - that are specific to each item.

## **Why do we need to do clustering?**

The idea is to develop a series of models to provide price recommendations and to forecast sales. For the training of such models, clustering is being experimented in this project. 

## **What is the granular level at which clustering is performed?**

At an **ASIN** (item identifier), **BRAND** & **MARKETPLACE** (country of sales) level. 

## **What are the features considered to perform clustering?**

CATEGORICAL FEATURES: 

- Product Main Category
- Product SubCategory
- Node Category (most granular)

TEXT FEATURE(S):

- Product Description

NUMERICAL FEATURES

- Average Selling Price
- Average Sales Volume

## **What are the next steps required to perform clustering?**

![clustering-steps](https://github.com/printlaura/se-15-machine-learning/assets/69178847/ed191459-a764-4ceb-b71d-779e6c5e8d3f)

- **Data Gathering:**  Queries to be written to fetch data from the following sources (tables in our data warehouse)
    - **Product Category:** ASIN_TRACKING_DETAILED_HISTORY
    - **Product SubCategory:** ASIN_TRACKING_DETAILED_HISTORY
    - **NodeCategory:** MIN_CATEGORY_LEAF_NAME from DWH_PROD.CORE.DIM_AMAZON_LISTINGS
    - **Product Description:** DWH_PROD.DBT_STAGING.INT_BRIDGEX_AMAZON_ALL_LISTINGS
    - **Average Sale Price :** ASIN_TRACKING_DETAILED_HISTORY
    - **Average Sale Volume :** ASIN_TRACKING_DETAILED_HISTORY
- **Data Preprocessing and Sanity Checks:** Data to be cleaned and preprocessed before moving to vectorization
- **Data Vectorization:** With cleaned data, the next step is to convert the vectors to the respective vector representations for modelling.

- **ML Model:** Post vectorization, experimenting clustering algorithms such as:
    - KMeans
    - HDBSCAN

- **Evaluation and Visualization of Clusters:** Once the clustering is done, the clusters are validated by visualizing them. This will be done with domain expertise in the manual way for the scope of this project.


## Directory structure in chronological order:

`sql_queries` → sql files with queries used to obtain raw datasets

`raw_data` → datasets before preprocessing

Reading and preprocessing of raw data in the following notebooks:

- `PreprocessProductCategories.ipynb`,
- `PreprocessNodeCategories.ipynb`,
- `PreprocessPriceAndSalesVolume.ipynb` and
- `PreprocessDescriptions.ipynb`

`MergeData.ipynb` → reads preprocessed datasets from `preprocessed_data`

`Vectorization.ipynb` → reads `preprocessed_data/Combined_Data.csv` and returns two types vectorized datasets: Full and Categories. Both available two extensions (*.csv* / *.parquet*). 

`Clustering.ipynb` → Implementation of clustering algorithms. 

`results` → results of clustering notebook.

`wordcloud_clusters` → wordcloud images of KMeans and HDBSCAN clusters.
