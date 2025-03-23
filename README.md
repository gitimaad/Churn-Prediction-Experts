# Python Phase - Stock Market Analysis and Visualization

Welcome to the **Python Phase** project! This repository contains a comprehensive Jupyter Notebook that performs stock market analysis and visualization using data scraped from Yahoo Finance. The project is designed to help you understand historical stock prices, calculate technical indicators, and create insightful visualizations.

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Data Fetching](#data-fetching)
- [Data Processing](#data-processing)
- [Visualization](#visualization)
- [Technical Indicators](#technical-indicators)
- [Database Integration](#database-integration)
- [Contributing](#contributing)
- [License](#license)

## 🌟 Project Overview

This project focuses on analyzing historical stock data from major companies using the `yfinance` library. It includes data fetching, processing, and visualization techniques to help you gain insights into stock market trends. The project also integrates with a MySQL database to store and retrieve stock data efficiently.

## 🚀 Features

- **Data Fetching**: Fetch historical stock data from Yahoo Finance for top companies.
- **Data Processing**: Clean and process raw stock data, including filling missing values and calculating daily returns.
- **Visualization**: Create various charts to visualize stock price trends, moving averages, and candlestick charts.
- **Technical Indicators**: Calculate and visualize technical indicators like RSI, moving averages, and Bollinger Bands.
- **Database Integration**: Save processed stock data into a MySQL database for future analysis.
- **Logging**: Implement logging to track script execution and debug errors.

## 🛠️ Installation

To get started with this project, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/python-phase.git
   cd python-phase

1.  **Install Required Libraries**:\
    Ensure you have Python installed, then install the required libraries using pip:

    bash

    Copy

    pip install -r requirements.txt

2.  **Set Up MySQL Database**:

    -   Install MySQL and create a database named `stock_data`.

    -   Update the database connection details in the notebook:

        python

        Copy

        host = '127.0.0.1'
        user = 'root'
        password = 'MySQL12345'
        database = 'stock_data'

🖥️ Usage
---------

1.  **Open the Jupyter Notebook**:

    bash

    Copy

    jupyter notebook Python_Phase.ipynb

2.  **Run the Notebook**:\
    Execute each cell in the notebook to fetch, process, and visualize stock data. The notebook is well-commented to guide you through each step.

📊 Data Fetching
----------------

The project fetches historical stock data for top companies like Apple, Microsoft, and Amazon using the `yfinance` library. The data includes:

-   **Stock Prices**: Open, High, Low, Close, and Volume.

-   **Date Range**: From January 1, 2000, to March 18, 2025.

python

Copy

import yfinance as yf

stocks = ['AAPL', 'MSFT', 'NVDA', 'KO', 'AMZN', 'META', 'TSLA', 'GOOGL', 'BRK-B', '2222.SR']
start_date = '2000-01-01'
end_date = '2025-03-18'

data = yf.download(stocks, start=start_date, end=end_date, group_by='ticker', progress=False)

🔄 Data Processing
------------------

The raw stock data is processed to calculate:

-   **Daily Returns**: Percentage change in closing prices.

-   **Moving Averages**: 50-day and 200-day simple moving averages.

-   **Technical Indicators**: RSI, Bollinger Bands, etc.

python

Copy

def process_stock_data(raw_data):
    raw_data.ffill(inplace=True)
    processed_data = {}
    for stock in stocks:
        if stock in raw_data.columns.get_level_values(0):
            stock_data = raw_data[stock].copy()
            stock_data['Daily Return'] = stock_data['Close'].pct_change()
            stock_data['50-day Simple Moving Average'] = stock_data['Close'].rolling(window=50).mean()
            stock_data['200-day Simple Moving Average'] = stock_data['Close'].rolling(window=200).mean()
            processed_data[stock] = stock_data
    return processed_data

📈 Visualization
----------------

The project includes various visualizations to help you understand stock trends:

-   **Stock Price Trends**: Line charts showing closing prices and moving averages.

-   **Candlestick Charts**: Visualize support and resistance levels.

-   **Volume Correlation**: Scatter plots to analyze the correlation between trading volume and price movement.

python

Copy

import matplotlib.pyplot as plt
import seaborn as sns

def chart_stock_trends(chart_data, stock):
    if stock not in chart_data:
        logging.warning(f'No data available for {stock}. Skipping this plot.')
        return
    data = chart_data[stock]
    plt.figure(figsize=(12, 8))
    plt.plot(data.index, data['Close'], label='Closing Price', color='blue', linewidth=1.5)
    plt.plot(data.index, data['50-day Simple Moving Average'], label='50-day SMA', color='red', linestyle='dashed', linewidth=1)
    plt.plot(data.index, data['200-day Simple Moving Average'], label='200-day SMA', color='green', linestyle='dashed', linewidth=1)
    plt.title(f'{stock} - Price Trend and Moving Averages')
    plt.xlabel('Date')
    plt.ylabel('Stock Price (USD)')
    plt.legend()
    plt.grid(True)
    plt.show()

📉 Technical Indicators
-----------------------

The project calculates and visualizes several technical indicators:

-   **Relative Strength Index (RSI)**: Measures the magnitude of recent price changes.

-   **Bollinger Bands**: Volatility bands placed above and below a moving average.

python

Copy

def calculate_technical_indicators(data):
    window_length = 14
    delta = data['Close'].diff()
    gain = (delta.where(delta > 0, 0)).rolling(window=window_length).mean()
    loss = (-delta.where(delta < 0, 0)).rolling(window=window_length).mean()
    rs = gain / loss
    data['RSI'] = 100 - (100 / (1 + rs))
    data['20-day Simple Moving Average'] = data['Close'].rolling(window=20).mean()
    data["Upper Band"] = data["20-day Simple Moving Average"] + (data["Close"].rolling(window=20).std() * 2)
    data["Lower Band"] = data["20-day Simple Moving Average"] - (data["Close"].rolling(window=20).std() * 2)
    return data

🗃️ Database Integration
------------------------

The processed stock data is saved into a MySQL database for future analysis. The project uses SQLAlchemy to interact with the database.

python

Copy

from sqlalchemy import create_engine

def save_database(stock_data, database_url="mysql+mysqlconnector://root:MySQL12345@127.0.0.1/stock_data"):
    engine = create_engine(database_url)
    for stock, data in stock_data.items():
        data['date'] = data.index
        data.to_sql(name=stock.lower(), con=engine, if_exists='replace', index=False)

## 🎯 Conclusion

The **Python Phase** project offers a robust framework for analyzing and visualizing stock market data using Python. By leveraging the `yfinance` library, the project fetches historical stock data, processes it to calculate key metrics like daily returns and moving averages, and generates insightful visualizations. The integration with a MySQL database ensures that the processed data can be stored and retrieved efficiently for future analysis.

### Key Takeaways:
- **Data-Driven Insights**: The project provides a clear understanding of stock market trends through detailed visualizations and technical indicators.
- **Efficient Data Handling**: With data processing and database integration, the project ensures that large datasets are managed effectively.
- **Customizable and Extendable**: The modular design of the notebook allows for easy customization and extension to include additional stocks or indicators.

### Future Enhancements:
- **Real-Time Data**: Integrate real-time data fetching to provide up-to-date market insights.
- **Machine Learning**: Incorporate machine learning models to predict future stock prices based on historical data.
- **User Interface**: Develop a user-friendly interface to make the tool accessible to non-technical users.

### Final Thoughts:
Whether you're a data enthusiast, a financial analyst, or a developer looking to explore stock market data, this project serves as a valuable resource. By following the steps outlined in this README, you can set up the project, analyze stock data, and generate visualizations that provide actionable insights.
