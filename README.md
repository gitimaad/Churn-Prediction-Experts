📈 Stock Market Data Analysis and Visualization 📊
==================================================

This repository contains a Python script for fetching, processing, and analyzing stock market data from Yahoo Finance. The script also includes functionality to visualize the data using various charts and save the processed data into a MySQL database. The project is designed to help users understand stock market trends, volatility, and correlations between trading volume and price movements.

* * * * *

📋 Table of Contents
--------------------

1.  Introduction

2.  Features

3.  Installation

4.  Usage

5.  Data Processing

6.  Visualization

7.  Database Integration

8.  Technical Indicators

9.  Support and Resistance Levels

10. Volume Correlation Analysis

11. Merging Data

12. Contact Me

* * * * *

🌟 Introduction
---------------

This project is part of the **Construct Week - B43: Python Phase**. The goal is to perform web scraping from the Yahoo Finance website, process the data, and create visualizations to analyze stock market trends. The script fetches historical stock prices for a list of top companies, processes the data to calculate technical indicators, and visualizes the data using various charts. The processed data is then saved into a MySQL database for further analysis.

* * * * *

🚀 Features
-----------

-   **📥 Data Fetching**: Fetches historical stock data from Yahoo Finance for a list of top companies.

-   **🔧 Data Processing**: Processes the raw data to calculate daily returns, moving averages, and technical indicators.

-   **📊 Visualization**: Creates various charts to visualize stock price trends, volatility, and volume correlations.

-   **💾 Database Integration**: Saves the processed data into a MySQL database for further analysis.

-   **📈 Technical Indicators**: Calculates technical indicators such as RSI, moving averages, and Bollinger Bands.

-   **📉 Support and Resistance Levels**: Calculates and visualizes support and resistance levels using candlestick charts.

-   **📈 Volume Correlation Analysis**: Analyzes the correlation between trading volume and price movements.

-   **🔗 Data Merging**: Merges data from multiple CSV files into a single CSV file and exports it to MySQL.

* * * * *

🛠️ Installation
----------------

To run this script, you need to have Python installed on your system. Follow these steps to set up the environment:

1.  **Clone the repository**:

    bash

    Copy

    git clone https://github.com/yourusername/stock-market-analysis.git
    cd stock-market-analysis

2.  **Install the required libraries**:

    bash

    Copy

    pip install -r requirements.txt

3.  **Set up MySQL**:

    -   Install MySQL on your system if not already installed.

    -   Create a database named `stock_data`.

    -   Update the MySQL connection details in the script if necessary.

* * * * *

🖥️ Usage
---------

To run the script, simply execute the following command:

bash

Copy

python script.py

The script will perform the following tasks:

1.  Fetch historical stock data for the specified companies.

2.  Process the data to calculate daily returns, moving averages, and technical indicators.

3.  Save the processed data into the MySQL database.

4.  Generate visualizations for stock price trends, volatility, and volume correlations.

5.  Merge data from multiple CSV files into a single CSV file and export it to MySQL.

* * * * *

🔧 Data Processing
------------------

The script processes the raw stock data to calculate the following:

-   **📅 Daily Returns**: The percentage change in the closing price from one day to the next.

-   **📊 50-day Simple Moving Average (SMA)**: A short-term trend indicator.

-   **📈 200-day Simple Moving Average (SMA)**: A long-term trend indicator.

-   **📉 Relative Strength Index (RSI)**: A momentum oscillator that measures the speed and change of price movements.

-   **📊 Bollinger Bands**: A volatility indicator that consists of a middle band (SMA) and two outer bands (standard deviations away from the SMA).

* * * * *

📊 Visualization
----------------

The script generates the following visualizations:

-   **📈 Stock Price Trends**: Line charts showing the closing price along with 50-day and 200-day SMAs.

-   **🕯️ Candlestick Charts**: Candlestick charts with support and resistance levels, breakout, and breakdown points.

-   **📊 Volume Correlation**: Scatter plots showing the correlation between trading volume and price changes.

-   **📉 Volatility**: Histograms showing the distribution of daily returns.

* * * * *

💾 Database Integration
-----------------------

The script integrates with a MySQL database to store the processed stock data. The data is saved in separate tables for each stock, and a merged table is created to combine data from all stocks.

* * * * *

📈 Technical Indicators
-----------------------

The script calculates the following technical indicators:

-   **📉 RSI**: Measures the magnitude of recent price changes to evaluate overbought or oversold conditions.

-   **📊 Bollinger Bands**: Helps identify volatility and potential price breakouts.

-   **📈 Moving Averages**: Used to identify trends and potential support/resistance levels.

* * * * *

📉 Support and Resistance Levels
--------------------------------

The script calculates support and resistance levels using a rolling window and visualizes them on candlestick charts. Breakouts and breakdowns are also marked on the charts.

* * * * *

📊 Volume Correlation Analysis
------------------------------

The script analyzes the correlation between trading volume and price changes using scatter plots. The correlation coefficient is calculated and logged for each stock.

* * * * *

🔗 Merging Data
---------------

The script merges data from multiple CSV files into a single CSV file and exports it to the MySQL database. This is useful for creating a consolidated view of the stock data.

* * * * *

📧 Contact Me
-------------

If you have any questions, suggestions, or just want to connect, feel free to reach out to me:

-   **📧 Email**: [your.email@example.com](hamadsaad1234@gmail.com/)

-   **🔗 LinkedIn**: [Your LinkedIn Profile](https://www.linkedin.com/in/mohammedimaad/)

* * * * *
