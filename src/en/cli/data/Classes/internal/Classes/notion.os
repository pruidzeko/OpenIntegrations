﻿Function GetComposition() Export

    TableСоwithтаinа = New ValueTable();
    TableСоwithтаinа.Columns.Add("Library");
    TableСоwithтаinа.Columns.Add("Module");
    TableСоwithтаinа.Columns.Add("Method");
    TableСоwithтаinа.Columns.Add("SearchMethod");
    TableСоwithтаinа.Columns.Add("Parameter");
    TableСоwithтаinа.Columns.Add("Description");
    TableСоwithтаinа.Columns.Add("MethodDescription");
    TableСоwithтаinа.Columns.Add("Region");

    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreatePage";
    NewLine.SearchMethod = "CREATEPAGE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Page management";
    NewLine.MethodDescription   = "Creates a child page above another parent page";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreatePage";
    NewLine.SearchMethod = "CREATEPAGE";
    NewLine.Parameter    = "--page";
    NewLine.Description    = "Parent ID";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreatePage";
    NewLine.SearchMethod = "CREATEPAGE";
    NewLine.Parameter    = "--title";
    NewLine.Description    = "Page title";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreatePageInDatabase";
    NewLine.SearchMethod = "CREATEPAGEINDATABASE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Page management";
    NewLine.MethodDescription   = "Creates a page in the parent database
    |
    |    The structure of the JSON page data (parameter --data):
    |    {
    |     ""DB field name 1""  : ""Value1"",
    |     ""DB field name 2""  : ""Value2"",
    |     ...
    |    }
    |";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreatePageInDatabase";
    NewLine.SearchMethod = "CREATEPAGEINDATABASE";
    NewLine.Parameter    = "--base";
    NewLine.Description    = "Parent database ID";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreatePageInDatabase";
    NewLine.SearchMethod = "CREATEPAGEINDATABASE";
    NewLine.Parameter    = "--data";
    NewLine.Description    = "Properties map";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "GetPage";
    NewLine.SearchMethod = "GETPAGE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Page management";
    NewLine.MethodDescription   = "Gets information about the page by ID";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "GetPage";
    NewLine.SearchMethod = "GETPAGE";
    NewLine.Parameter    = "--page";
    NewLine.Description    = "Page ID";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditPageProperties";
    NewLine.SearchMethod = "EDITPAGEPROPERTIES";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Page management";
    NewLine.MethodDescription   = "|
    |    The structure of the JSON page data (parameter --data):
    |    {
    |     ""DB field name 1""  : ""Value1"",
    |     ""DB field name 2""  : ""Value2"",
    |     ...
    |    }
    |";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditPageProperties";
    NewLine.SearchMethod = "EDITPAGEPROPERTIES";
    NewLine.Parameter    = "--page";
    NewLine.Description    = "ID of the page being modified";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditPageProperties";
    NewLine.SearchMethod = "EDITPAGEPROPERTIES";
    NewLine.Parameter    = "--data";
    NewLine.Description    = "Map of editable parameters (optional, def. val. - Empty)";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditPageProperties";
    NewLine.SearchMethod = "EDITPAGEPROPERTIES";
    NewLine.Parameter    = "--icon";
    NewLine.Description    = "URL of the page icon image (optional, def. val. - Empty)";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditPageProperties";
    NewLine.SearchMethod = "EDITPAGEPROPERTIES";
    NewLine.Parameter    = "--cover";
    NewLine.Description    = "URL of the page cover image (optional, def. val. - Empty)";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditPageProperties";
    NewLine.SearchMethod = "EDITPAGEPROPERTIES";
    NewLine.Parameter    = "--archive";
    NewLine.Description    = "Archive page or not (boolean) (optional, def. val. - No)";
    NewLine.Region     = "Page management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateDatabase";
    NewLine.SearchMethod = "CREATEDATABASE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Database management";
    NewLine.MethodDescription   = "Creates a database
    |
    |    The structure of the JSON database fields (parameter --props):
    |    {
    |     ""Name of field with regular type""     : ""Data type 1"",
    |     ""Name of field with a value selection""  : 
    |        {
    |         ""Option1""  : ""green"",
    |         ""Option2""  : ""red"",
    |         ...
    |        },
    |     ...
    |    }
    |    
    |    Available types: title(primary), rich_text, number, status,
    |    date, files, checkbox, url, email, phone_number, people
    |";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateDatabase";
    NewLine.SearchMethod = "CREATEDATABASE";
    NewLine.Parameter    = "--page";
    NewLine.Description    = "Parent page ID";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateDatabase";
    NewLine.SearchMethod = "CREATEDATABASE";
    NewLine.Parameter    = "--title";
    NewLine.Description    = "Database title";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateDatabase";
    NewLine.SearchMethod = "CREATEDATABASE";
    NewLine.Parameter    = "--props";
    NewLine.Description    = "Database properties (optional, def. val. - Empty)";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "GetDatabase";
    NewLine.SearchMethod = "GETDATABASE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Database management";
    NewLine.MethodDescription   = "Get database information";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "GetDatabase";
    NewLine.SearchMethod = "GETDATABASE";
    NewLine.Parameter    = "--base";
    NewLine.Description    = "Database ID";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditDatabaseProperties";
    NewLine.SearchMethod = "EDITDATABASEPROPERTIES";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Database management";
    NewLine.MethodDescription   = "Edits properties of an existing database
    |
    |    The structure of the JSON database fields (parameter --props):
    |    {
    |     ""Name of field with regular type""     : ""Data type 1"",
    |     ""Name of field with a value selection""  : 
    |        {
    |         ""Option1""  : ""green"",
    |         ""Option2""  : ""red"",
    |         ...
    |        },
    |     ...
    |    }
    |    
    |    Available types: title(primary), rich_text, number, status,
    |    date, files, checkbox, url, email, phone_number, people
    |";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditDatabaseProperties";
    NewLine.SearchMethod = "EDITDATABASEPROPERTIES";
    NewLine.Parameter    = "--base";
    NewLine.Description    = "Target database ID";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditDatabaseProperties";
    NewLine.SearchMethod = "EDITDATABASEPROPERTIES";
    NewLine.Parameter    = "--props";
    NewLine.Description    = "New or modified database properties (optional, def. val. - Empty)";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditDatabaseProperties";
    NewLine.SearchMethod = "EDITDATABASEPROPERTIES";
    NewLine.Parameter    = "--title";
    NewLine.Description    = "New database title (optional, def. val. - Empty)";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "EditDatabaseProperties";
    NewLine.SearchMethod = "EDITDATABASEPROPERTIES";
    NewLine.Parameter    = "--description";
    NewLine.Description    = "New database description (optional, def. val. - Empty)";
    NewLine.Region     = "Database management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateBlock";
    NewLine.SearchMethod = "CREATEBLOCK";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Blocks managment";
    NewLine.MethodDescription   = "Creates a new block based on an existing block";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateBlock";
    NewLine.SearchMethod = "CREATEBLOCK";
    NewLine.Parameter    = "--page";
    NewLine.Description    = "Parent block or page ID";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateBlock";
    NewLine.SearchMethod = "CREATEBLOCK";
    NewLine.Parameter    = "--block";
    NewLine.Description    = "Block ID or block sample itself";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "CreateBlock";
    NewLine.SearchMethod = "CREATEBLOCK";
    NewLine.Parameter    = "--prev";
    NewLine.Description    = "Block ID after which to insert the new one (optional, def. val. - Empty)";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "ReturnBlock";
    NewLine.SearchMethod = "RETURNBLOCK";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "ReturnBlock";
    NewLine.SearchMethod = "RETURNBLOCK";
    NewLine.Parameter    = "--block";
    NewLine.Description    = "Block ID";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "ReturnBlock";
    NewLine.SearchMethod = "RETURNBLOCK";
    NewLine.Parameter    = "--core";
    NewLine.Description    = "True > service fields are deleted, only the block itself remains (optional, def. val. - Да)";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "ReturnChildBlocks";
    NewLine.SearchMethod = "RETURNCHILDBLOCKS";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Blocks managment";
    NewLine.MethodDescription   = "Returns list of child blocks of parent block";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "ReturnChildBlocks";
    NewLine.SearchMethod = "RETURNCHILDBLOCKS";
    NewLine.Parameter    = "--block";
    NewLine.Description    = "Parent block ID";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "DeleteBlock";
    NewLine.SearchMethod = "DELETEBLOCK";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Blocks managment";
    NewLine.MethodDescription   = "Deletes block by ID";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "DeleteBlock";
    NewLine.SearchMethod = "DELETEBLOCK";
    NewLine.Parameter    = "--block";
    NewLine.Description    = "Block ID";
    NewLine.Region     = "Blocks managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "UserList";
    NewLine.SearchMethod = "USERLIST";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Users";
    NewLine.MethodDescription   = "Returns a list of workspace users";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "GetUserData";
    NewLine.SearchMethod = "GETUSERDATA";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Users";
    NewLine.MethodDescription   = "Gets user data by ID";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "notion";
    NewLine.Module      = "OPI_Notion";
    NewLine.Method       = "GetUserData";
    NewLine.SearchMethod = "GETUSERDATA";
    NewLine.Parameter    = "--user";
    NewLine.Description    = "Target user ID";
    NewLine.Region     = "Users";

    Return TableСоwithтаinа;
EndFunction

