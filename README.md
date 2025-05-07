# Visa & MasterCard Stock Volatility Analysis (2008–2024)
This project explores long term stock performance and volatility of Visa (V) and MasterCard (M) using SQL and Tableau. It uncovers key financial trends, such as price fluctuations, trading volume patterns, and notable bull and bear runs, helping investors and analysts understand behavior in the financial sector.

🔧 Tools I Used
SQL (MySQL) – For data cleaning and analysis

Tableau –  For interactive visualizations

Excel – For data formatting and initial preprocessing before exporting

Analysis Conducted
1. Daily Returns & Volatility
Calculated daily percentage change in closing prices to measure stock volatility and observe short term market reactions.

2. Monthly Average Volatility
Used STDDEV of daily returns to track how volatility shifted over time for both companies.

3. Highest & Lowest Historical Prices
Identified historical peaks and bottoms in price for each stock.

4. 50 Day & 200 Day Moving Averages
Tracked medium and long term trends to assess momentum and trend reversals.

5. Trading Volume Trends
Analyzed average monthly trading volume to detect periods of high investor activity.

6. Bull & Bear Runs
Detected longest consecutive streaks of gains (bull runs) and losses (bear runs) over the 16-year period.

Key Findings
- Visa experienced a longer bull run than MasterCard, with consistent upward momentum in certain recovery phases.
- MasterCard showed higher monthly volatility during early 2020, reflecting pandemic-induced market swings.
- Both stocks had volume spikes during financial crises and earnings seasons, indicating investor reaction.
- The 200 day moving average reliably indicated long-term trend direction for both companies.

Sample Visualizations

Monthly Volatility Chart
![image](https://github.com/user-attachments/assets/ca093dd0-7320-4594-8fce-21d54bd46f20)

50 & 200 Day Moving Averages
![image](https://github.com/user-attachments/assets/0e58295d-1ac4-4d10-a447-973d50054cfe)

How to Reproduce
- Import MasterandVisa.csv into MySQL.
- Run the queries in it to analyze data.
- Export SQL outputs as .csv and connect to Tableau for visualization.
- Explore the Mastercard and Visa Visualizations.twbx for interactive insights.

