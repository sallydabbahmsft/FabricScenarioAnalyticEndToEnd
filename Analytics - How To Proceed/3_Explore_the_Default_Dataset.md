[**Back to the previous step**](/Analytics%20-%20How%20To%20Proceed/2_Create_the_Bronze_Lakehouse.md)

# Explore the raw data using the default dataset

1. When you create a lekehouse or a datawarehouse, a [default powerBI](https://learn.microsoft.com/en-us/fabric/data-warehouse/datasets#understand-whats-in-the-default-power-bi-dataset) dataset is created.</br>  
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/250db808-3280-49ce-9b3a-ec82d51ba716)

 Currently we have a limitation with Auto-create option, so to demonstate the auto-create report, we need to create new semantic model 
2. Click on Bronze lakehouse, select New Semantic model and name it **New Semantic Model** , select **dimension_customer** Table and save it in the same workspace as Bronze Lakehouse.
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/9ddcf46a-80d0-4487-8d3a-13890f1d402f)

3. From the dataset pane, you can view all the tables. You have options to create reports either from scratch, paginated report, or let Power BI automatically create a report based on your data. For this tutorial, select **Auto-create** under **Create a report**. </br>  
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/6a78425e-2af5-4f9a-8d7f-4420a554182c)



4. Since the table is a dimension and there are no measures in it, Power BI creates a measure for the row count and aggregates it across different columns, and creates different charts as shown in the following image. You can save this report for the future by selecting Save from the top ribbon. You can make more changes to this report to meet your requirement by including or excluding other tables or columns. </br>  
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/e6829f56-b7ef-4ce8-820d-b519b2db50c2)


5. When closing the report you can save it

[**Go to the next step**](/Analytics%20-%20How%20To%20Proceed/4_Ingest_Data_Using_Pipeline.md)
