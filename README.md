# Turning Losses into Loyalty: Analyzing Churn Risk in Subscription-Based Services

This repository contains the analysis and visualization components for the "Turning Losses into Loyalty" project. The goal of this project was to analyze customer churn patterns for a subscription-based fitness and wellness startup and provide actionable business insights.

## Project Structure

*   **DATASET CustomerSubscriptions.csv**: The raw dataset containing customer demographics, subscription details, usage metrics, and feedback scores.
*   **Dashboard.xlsx**: The interactive dashboard developed to visualize key metrics, churn trends, and performance indicators.
*   **ChurnAnalysis.sql**: The SQL script containing queries used for data extraction and churn analysis.
*   **ChurnSummary.txt**: A summary of key findings and actionable business recommendations based on the analysis.

## Dataset Overview

The project utilizes **DATASET CustomerSubscriptions.csv**, which includes the following key attributes[cite: 1]:

| Column Name | Description |
| :--- | :--- |
| CustomerID | Unique customer ID |
| Name | Customer name |
| Age | Age of customer |
| Gender | Male / Female / Other |
| SubscriptionType | Monthly, Quarterly, Yearly |
| SubscriptionDate | When subscription started |
| LastLoginDate | Last time customer accessed the service |
| TotalSessions | Total sessions (yoga/gym/consultation) attended |
| FeedbackScore | Rating from 1 to 10 |
| IsChurned | 1 = Churned, 0 = Active |

## Analysis & Visualization

The analysis was performed in two main parts as requested:

1.  **SQL Analysis**: Queries were executed to determine churn rates by subscription type and age group, identify inactive customers, and analyze feedback scores.
2.  **Dashboarding**: A **Dashboard.xlsx** was created to provide a visual representation of the data, featuring:
    *   Donut/Pie chart for Churned vs. Active customers.
    *   Bar charts for churn rates by subscription type.
    *   KPI cards for Total Customers, % Churned, Avg Feedback Score, and engagement metrics.

## Key Insights

Based on the analysis of **DATASET CustomerSubscriptions.csv** and the resulting **Dashboard.xlsx**, the following critical insights were derived:

*   **Subscription Type**: Monthly subscriptions show the highest churn risk at 57.60%, whereas Yearly contracts offer the highest stability at 32.35%.
*   **Demographics**: The 18-25 age group exhibits the highest churn rate at 60.27%.
*   **Engagement**: A strong negative correlation exists between usage and churn; customers with low session attendance (< 5) and low feedback scores (< 5) have a very high likelihood of churning.
