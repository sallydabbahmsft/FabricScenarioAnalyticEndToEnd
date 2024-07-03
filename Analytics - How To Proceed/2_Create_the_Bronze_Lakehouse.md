[**Back to the previous step**](/Analytics%20-%20How%20To%20Proceed/1_Create_MS_Fabric_workspace.md)

# Create the Medallion architecture

[What is the medallion architecture:](https://learn.microsoft.com/en-us/azure/databricks/lakehouse/medallion)

The **bronze layer** contains unvalidated data. Data ingested in the bronze layer typically:

Maintains the raw state of the data source.
Is appended incrementally and grows over time.
Can be any combination of streaming and batch transactions.

The **silver layer** represents a validated, enriched version of our data that can be trusted for downstream analytics. 

This **gold layer** is often highly refined and aggregated, containing data that powers analytics, machine learning, and production applications.

## Create the Bronze layer with a lakehouse

1. From the previously created Workspace, select Lakehouse to create a lakehouse
   
2. In the New lakehouse dialog box, enter **Bronze** in the Name field.
   
3. Select **Create** to create and open the new lakehouse.

## Ingest Sample data

HowYou will learn how to import data from Csv files using a Data Flow Gen 2 in MS Fabric.

1. Download the *dimension_customer.csv* file from the [Fabric samples repo](https://github.com/microsoft/fabric-samples/blob/689e78676174d4627fc3855165bde9100cb4d19e/docs-samples/data-engineering/dimension_customer.csv).
   
2. In the **Lakehouse explorer**, you see options to load data into lakehouse. Select New Dataflow Gen2.
   ![Dataflow Gen2](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/bbbd7e7e-57dc-40d1-8b17-0e5b2bb178ff)

3. On the new dataflow pane, select Import from a Text/CSV file.
   
4. On the Connect to data source pane, select the Upload file radio button. Drag and drop the dimension_customer.csv file that you downloaded in step 1. After the file is uploaded, select Next.
   ![Connection Setting](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/c9dd00e9-39a2-4c8d-a733-777c7ff66a79)
   
5. From the **Preview file data** page, preview the data and select Create to proceed and return back to the dataflow canvas.
   
6. In the **Query settings** pane, enter **dimension_customer** for the Name field. From the menu items, select Add data destination and select **Lakehouse**.
    ![Query settings](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/b471ac20-06b7-48f3-a359-dcd13091601f)

7. If needed, from the **Connect to data destination** screen, sign into your account. Select **Next**.
   
8. Navigate to the **bronze** in your workspace.
   
9.  If the **dimension_customer** table doesn't exist, select the New table setting and enter the table name **dimension_customer**. If the table already exists, select the Existing table setting and choose **dimension_customer** from the list of tables in the object explorer. Select **Next**.
    ![destination](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/dcc4788f-f0b8-43cd-8625-dc7f7f88dc7e)
10. On the **Choose destination** settings pane, select **Replace** as **Update method**. Select **Save Settings** to return to the dataflow canvas.
    
11. From the dataflow canvas, you can easily transform the data based on your business requirements. For simplicity, we aren't making any changes in this tutorial. To proceed, select **Publish** at the bottom right of the screen.</br>  
   ![query settings](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/1859abab-b39c-42d4-be57-b22ed014b435)

12. A spinning circle next to the dataflow's name indicates publishing is in progress in the item view. When publishing is complete, select the ... and select **Properties**. Rename the dataflow to *Load Lakehouse Table* and select Save.

13. Select the **Refresh now** option next to data flow name to refresh the dataflow. It runs the dataflow and moves data from the source file to lakehouse table. While it's in progress, you see a spinning circle under **Refreshed** column in the item view.</br>  
   ![Refresh](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/f7ba3448-ed86-4375-b092-77840ada5141)

14. Once the dataflow is refreshed, select your new lakehouse in the left navigation panel to view the **dimension_customer** delta table. Select the table to preview its data. You can also use the SQL endpoint of the lakehouse to query the data with SQL statements. Select **SQL endpoint** from the **Lakehouse** drop-down menu at the top right of the screen.
    
15. Select the dimension_customer table to preview its data or select New SQL query to write your SQL statements.</br>  
   ![SQL Endpoint](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/28161793-9406-4bb6-a6f9-2214dd39512e)

16. Using the Default SQL endpoint you can run T-SQL code to explore the data. The following sample query aggregates the row count based on the *BuyingGroup* column of the *dimension_customer* table. SQL query files are saved automatically for future reference, and you can rename or delete these files based on your need. To run the script, select the Run icon at the top of the script file.
  
``` sql
SELECT BuyingGroup, Count(*) AS Total
FROM dimension_customer
GROUP BY BuyingGroup
```
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/0d06ee7f-ec54-48fe-a791-75f7cff2de69)


[**Go to the next step**](/Analytics%20-%20How%20To%20Proceed/3_Explore_the_Default_Dataset.md)
