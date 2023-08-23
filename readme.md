# Meta Snowflake Queries

This repository contains a collection of Snowflake queries that can be run on Snowflake's metadata (Account Usage data, Organization Usage data, Information Schema data etc.).

## Table of Contents

+ [Cost Observability](./cost_observability/)
    1. [breakdown_by_usage_type_30d](./cost_observability/breakdown_by_usage_type_30d.sql): Organization's cost breakdown by usage type for the past 30 days.
    1. [monthly_costs](./cost_observability/monthly_costs.sql): Organization's total monthly costs for the current year, grouped by account.
    1. [top_largest_tables](./cost_observability/top_largest_tables.sql): Database's 100 largest tables by total billable bytes.
    1. [credit_usage_by_warehouse_7d](./cost_observability/credit_usage_by_warehouse_7d.sql): Account's credit usage by warehouse in the last 7 days.
    1. [credit_usage_by_warehouse_30d](./cost_observability/credit_usage_by_warehouse_30d.sql): Account's credit usage by warehouse in the last 30 days.
    1. [total_costs_7d](./cost_observability/total_costs_7d.sql): Total organization costs for the past 7 days, grouped by account.
    1. [total_costs_30d](./cost_observability/total_costs_30d.sql): Organization's total costs for the past 30 days, grouped by account.
    1. [top_queries_execution_time_7d](./cost_observability/top_queries_execution_time_7d.sql): Account's 100 most run queries by total execution time in the last 7 days, and the user who ran them most.
    1. [top_queries_execution_time_30d](./cost_observability/top_queries_execution_time_30d.sql): Account's 100 most run queries by total execution time in the last 30 days, and the user who ran them most.
    1. [top_users_execution_time_7d](./cost_observability/top_users_execution_time_7d.sql): Account's top 100 users by execution time in the last 7 days.
    1. [top_users_execution_time_30d](./cost_observability/top_users_execution_time_30d.sql): Account's top 100 users by execution time in the last 30 days.
    1. [longest_running_query_7d](./cost_observability/longest_running_query_7d.sql): Account's longest running queries in the last 7 days.
    1. [longest_running_query_30d](./cost_observability/longest_running_query_30d.sql): Account's longest running queries in the last 30 days.

## Contribution Guide

Contributions are welcome, just open a PR.
+ Try to be consistent with folder and file naming conventions.
+ Start with a comment on each file explaining what it does. Add more comments if needed.
+ Use [codebeautify](https://codebeautify.org/sqlformatter#) to beautify your SQL.
+ Don't push any sensitive info like propreitary Database, Schema, or Table names.