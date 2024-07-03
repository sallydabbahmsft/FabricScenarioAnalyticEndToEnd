[**Back to the previous step**](/Analytics%20-%20How%20To%20Proceed/3_Explore_the_Default_Dataset.md)

# Ingest data

In this section, you use the **Copy data activity** of the **Data Factory pipeline** to ingest sample data from an **Azure storage account** to the **Files** section of the **Bronze** lakehouse you created earlier. </br>  

1. Select Workspaces in the left navigation pane, and then select your new workspace from the Workspaces menu. The items view of your workspace appears.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/3c34a02f-4a77-465a-b5f1-e28f9b957080)


2. From the **+New** button in the workspace page, select **Data pipeline**.
   
3. In the **New pipeline** dialog box, specify the name as **IngestDataFromSourceToLakehous**e and select **Create**. A new data factory pipeline is created and opened.
   
4. On your newly created data factory pipeline, select **Add pipeline activity** to add an activity to the pipeline and select **Copy data**. This action adds copy data activity to the pipeline canvas.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/fca4b94d-5736-4a7a-81db-1833b036d454)


5. Select the newly added copy data activity from the canvas. Activity properties appear in a pane below the canvas (you may need to expand the pane upwards by dragging the top edge). Under the **General** tab in the properties pane, specify the name for the copy data activity **Data Copy to Lakehouse**.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/5a7f1c61-0de3-43c4-8ad8-8588243ebc1b)

6. Under Source tab of the selected copy data activity, select **External** as **Data store type** and then select **+ New** to create a new connection to data source.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/d876da75-168f-4206-91de-a6c0eac199d4)


7. For this tutorial, all the sample data is available in this public container of Azure blob storage: *https://azuresynapsestorage.blob.core.windows.net/sampledata*. You connect to this container to copy data from it. On the **New connection** wizard, select **Azure Blob Storage** and then select **Continue**.</br>  
   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/88d4dff4-a8c7-40de-ba24-191356cacf0a)


8. On the next screen of the **New connection** wizard, enter the following details and select **Create** to create the connection to the data source.

   | Propery         | Value     |
   |--------------|-----------|
   | Account name or URI | https://azuresynapsestorage.blob.core.windows.net/sampledata      |
   | Connection      | Create new connection  |
   | Connection name      | wwisampledata  |
   | Authentication kind      | Anonymous  | 

   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/01db4b5f-f7a1-4aa1-8099-4b2d17c66518)


9. Once the new connection is created, return to the **Source** tab of the copy data activity, and the newly created connection is selected by default. Specify the following properties before moving to the destination settings.

   |Property	| Value |
   |--------------|-----------|
   |Data store type    |	External|
   |Connection |   wwisampledata |
   |File path type |	File path |
   |File path	| Container name (first text box): sampledata; Directory name (second text box): WideWorldImportersDW/parquet/full |
   |Recursively    |	Checked |
   |File Format    |	Binary |

   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/3ab41782-10fe-4542-8969-10dbf453d247)


10. Under the **Destination** tab of the selected copy data activity, specify the following properties:

   |Property	| Value |
   |--------------|-----------|
   |Data store type    | Workspace |
   |Workspace data store type  | Lakehouse |
   |Lakehouse  | Bronze |
   |Root Folder    | Files |
   |File path  | Directory name (first text box): wwi-raw-data|
   |File Format    | Binary |

   ![image](https://github.com/sallydabbahmsft/FabricScenarioAnalyticEndToEnd/assets/105279899/f3c09d1f-132c-46c9-b2af-fa1ae00d7cd2)


11. Select the **Save** button on the top ribbon (under **Home**) to save your changes, and select **Run** to execute your pipeline and its activity. You can also schedule pipelines to refresh data at defined intervals to meet your business requirements. For this tutorial, we run the pipeline only once by clicking on **Run** button. It can take few minutes to complete.
    
12. You can monitor the execution of the pipeline and its activity under the Output tab, which appears when you click anywhere on the canvas. Optionally, you can select the glasses icon, which appears when you hover over the name, to look at the details of the data transfer.
   ![run pipeline](../Images/save-run-output-tab.png)

13. Once the data is copied, go to the items view of the workspace and select your new lakehouse (wwilakehouse) to launch the **Lakehouse explorer**.
   ![validate copy](../Images/validate-destination-table.png)

[**Go to the next step**](/Analytics%20-%20How%20To%20Proceed/5_Prepare_Delta_Tables.md)
