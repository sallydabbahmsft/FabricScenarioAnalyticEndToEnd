[**Back to the previous step**](/Analytics%20-%20How%20To%20Proceed/3_Explore_the_Default_Dataset.md)

# Ingest data

In this section, you use the **Copy data activity** of the **Data Factory pipeline** to ingest sample data from an **Azure storage account** to the **Files** section of the **Bronze** lakehouse you created earlier. </br>  

1. Select Workspaces in the left navigation pane, and then select your new workspace from the Workspaces menu. The items view of your workspace appears.</br>  
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/c113a4a0-35d1-40f7-a82b-d55e83408643)

2. From the **+New** button in the workspace page, select **More options**.

3. select **Data pipeline**
   
4. In the **New pipeline** dialog box, specify the name as **IngestDataFromSourceToLakehous**e and select **Create**. A new data factory pipeline is created and opened.
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/162235ad-3f3c-4460-a990-a68ca7f5cf02)

   
5. On your newly created data factory pipeline, select **pipeline activity** to add an activity to the pipeline and select **Copy data**. This action adds copy data activity to the pipeline canvas.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/51646754-b102-4b49-a6f5-e98332dba629)


6. Select the newly added copy data activity from the canvas. Activity properties appear in a pane below the canvas (you may need to expand the pane upwards by dragging the top edge). Under the **General** tab in the properties pane, specify the name for the copy data activity **Data Copy to Lakehouse**.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/5a7f1c61-0de3-43c4-8ad8-8588243ebc1b)

7. Under Source tab of the selected copy data activity, open  **Connection**  then select **More**.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/d6af0511-4174-4a85-8eab-15c03e32d71f)


8. For this tutorial, we will use sample data is available in Fabric **Sample data**. click on Sample data tab and select **NYC Taxi Green** and click on OK.</br>  
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/acd08f73-ee9e-471f-9367-bf96cb3c08bd)



9.  Under the **Destination** tab of the selected copy data activity, in **Connection** tab, click on **More** and choose **Bronze** lakehouse under **OneLake**:
![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/77c37ba0-9895-4450-879b-aeae3b072245)

choose Root Folder as **Files**.

11. Select the **Save** button on the top ribbon (under **Home**) to save your changes, and select **Run** to execute your pipeline and its activity. You can also schedule pipelines to refresh data at defined intervals to meet your business requirements. For this tutorial, we run the pipeline only once by clicking on **Run** button. It can take few minutes to complete.
    
12. You can monitor the execution of the pipeline and its activity under the Output tab, which appears when you click anywhere on the canvas. Optionally, you can select the glasses icon, which appears when you hover over the name, to look at the details of the data transfer.
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/9495163a-c055-47a4-a378-9278ac442547)


13. Once the data is copied, go to the items view of the workspace and select your new lakehouse (wwilakehouse) to launch the **Lakehouse explorer**.
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/39ac8bce-de10-4d30-ab81-6ae07ef83296)


[**Go to the next step**](/Analytics%20-%20How%20To%20Proceed/5_Prepare_Delta_Tables.md)
