# Project: Clustering of Items

## Context

The company for which this project is developed buys and scales Amazon businesses. It acts as an eCommerce aggregator that sells around 47000 different products from a variety of categories, sub categories and brands. Currently, the Planning & Pricing team from the Commercial department does sales forecasting and pricing almost manually, with a big error margin. 

## **Why do we need to do clustering?**

The idea is to develop a series of models to provide price recommendations. For the training of such models, clustering is being experimented in this project.

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

![Untitled.png](Project%20Clustering%20of%20ASINs%20(1)%20bfed877f978942938edaa41971b86260/Untitled.png)

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
    - 

- **Evaluation and Visualization of Clusters:** Once the clustering is done, the clusters are validated by visualizing them. This will be done with domain expertise in the manual way for the scope of this project.
