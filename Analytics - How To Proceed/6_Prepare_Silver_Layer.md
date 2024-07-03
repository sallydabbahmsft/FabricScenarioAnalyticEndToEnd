[**Back to the previous step**](/Analytics%20-%20How%20To%20Proceed/5_Prepare_Delta_Tables.md)

The **silver layer** represents a validated, enriched version of our data that can be trusted for downstream analytics. 

## Create the Silver layer with a warehouse

1. From the previously created Workspace, select **Warehouse** to create a [new warehouse](https://learn.microsoft.com/en-us/fabric/get-started/decision-guide-data-store)
   
2. In the New lakehouse dialog box, enter **Silver** in the Name field.
   
3. Select **Create** to create and open the new warehouse.

# Applying data transformation while moving them from bronze to silver layer

1. Go the items view of the workspace again and select the **Silver** warehouse to open it.

2. Now, copy the content of the file [01_Silver_Create_dimention_tables.sql](/T-SQL%20Scripts/01_Silver_Create_dimention_tables.sql). In the warehouse view, select **New Sql Query** from the ribbon.

3. Paste the code you copied at step 2 and press the **Run** button.</br>  
   This script will create the dimention tables. It creates the destinations tables with the proper data types in the brand new schema **sales** and ingests the data using the **INSERT INTO** T-SQL code. While ingesting data it runs also some data modification/transformation.
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/80f16cde-14b2-4510-83bb-c0f064a6cb8d)

4. Now, copy the content of the file [02_Silver_Create_fact_table.sql](/T-SQL%20Scripts/02_Silver_Create_fact_table.sql). In the warehouse view, select **New Sql Query** from the ribbon.

5. Paste the code you copied at step 4 and press the **Run** button.</br>  
   This script will create the fact table. it creates the destinations tables in the brand new schema **sales** and ingests the data using the **CREATE TABLE AS SELECT** T-SQL code. While ingesting data it runs also some data modification/transformation. It might take few minute to complete.</br>  
  ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/a3f47c31-8717-466e-aeab-88f32b12683d)


[**Go to the next step**](/Analytics%20-%20How%20To%20Proceed/7_Prepare_Gold_Layer.md)
