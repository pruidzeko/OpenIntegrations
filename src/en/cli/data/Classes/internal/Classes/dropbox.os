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
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetAuthorizationLink";
    NewLine.SearchMethod = "GETAUTHORIZATIONLINK";
    NewLine.Parameter    = "--appkey";
    NewLine.Description    = "Application key";
    NewLine.Region     = "Account and authorization";
    NewLine.MethodDescription   = "Generates an authorization link for browser transition";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetToken";
    NewLine.SearchMethod = "GETTOKEN";
    NewLine.Parameter    = "--appkey";
    NewLine.Description    = "Application key";
    NewLine.Region     = "Account and authorization";
    NewLine.MethodDescription   = "Gets token based on the code from the GetAuthorizationLink page";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetToken";
    NewLine.SearchMethod = "GETTOKEN";
    NewLine.Parameter    = "--appsecret";
    NewLine.Description    = "Application secret";
    NewLine.Region     = "Account and authorization";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetToken";
    NewLine.SearchMethod = "GETTOKEN";
    NewLine.Parameter    = "--code";
    NewLine.Description    = "Code from the authorization page";
    NewLine.Region     = "Account and authorization";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "RefreshToken";
    NewLine.SearchMethod = "REFRESHTOKEN";
    NewLine.Parameter    = "--appkey";
    NewLine.Description    = "Application key";
    NewLine.Region     = "Account and authorization";
    NewLine.MethodDescription   = "Gets a new token based on the refresh token";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "RefreshToken";
    NewLine.SearchMethod = "REFRESHTOKEN";
    NewLine.Parameter    = "--appsecret";
    NewLine.Description    = "Application secret";
    NewLine.Region     = "Account and authorization";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "RefreshToken";
    NewLine.SearchMethod = "REFRESHTOKEN";
    NewLine.Parameter    = "--refresh";
    NewLine.Description    = "Refresh token";
    NewLine.Region     = "Account and authorization";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetAccountInformation";
    NewLine.SearchMethod = "GETACCOUNTINFORMATION";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Account and authorization";
    NewLine.MethodDescription   = "Gets account information";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetAccountInformation";
    NewLine.SearchMethod = "GETACCOUNTINFORMATION";
    NewLine.Parameter    = "--account";
    NewLine.Description    = "Account ID. Current token account if not filled (optional, def. val. - Empty)";
    NewLine.Region     = "Account and authorization";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetSpaceUsageData";
    NewLine.SearchMethod = "GETSPACEUSAGEDATA";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Account and authorization";
    NewLine.MethodDescription   = "Gets information on the amount of used disk space";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetObjectInformation";
    NewLine.SearchMethod = "GETOBJECTINFORMATION";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Gets information about a file or directory";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetObjectInformation";
    NewLine.SearchMethod = "GETOBJECTINFORMATION";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetObjectInformation";
    NewLine.SearchMethod = "GETOBJECTINFORMATION";
    NewLine.Parameter    = "--detail";
    NewLine.Description    = "Adds additional information fields for media files (optional, def. val. - No)";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetListOfFolderFiles";
    NewLine.SearchMethod = "GETLISTOFFOLDERFILES";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Gets the list of the first files in the directory or continues getting the next ones when the cursor is specified";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetListOfFolderFiles";
    NewLine.SearchMethod = "GETLISTOFFOLDERFILES";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the directory. Optional if the cursor is specified (optional, def. val. - Empty)";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetListOfFolderFiles";
    NewLine.SearchMethod = "GETLISTOFFOLDERFILES";
    NewLine.Parameter    = "--detail";
    NewLine.Description    = "Adds additional information fields for media files (optional, def. val. - No)";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetListOfFolderFiles";
    NewLine.SearchMethod = "GETLISTOFFOLDERFILES";
    NewLine.Parameter    = "--cursor";
    NewLine.Description    = "Cursor from the previous request to get the next set of files (optional, def. val. - Empty)";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetPreview";
    NewLine.SearchMethod = "GETPREVIEW";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Gets PDF or HTML preview of the object (for documents only)";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetPreview";
    NewLine.SearchMethod = "GETPREVIEW";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "UploadFile";
    NewLine.SearchMethod = "UPLOADFILE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Uploads a file to the cloud drive";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "UploadFile";
    NewLine.SearchMethod = "UPLOADFILE";
    NewLine.Parameter    = "--file";
    NewLine.Description    = "Data file for upload";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "UploadFile";
    NewLine.SearchMethod = "UPLOADFILE";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Save path on Dropbox";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "UploadFile";
    NewLine.SearchMethod = "UPLOADFILE";
    NewLine.Parameter    = "--overwrite";
    NewLine.Description    = "Overwrite file in case of path conflicts (optional, def. val. - No)";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "UploadFileByURL";
    NewLine.SearchMethod = "UPLOADFILEBYURL";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Uploads a file to the cloud drive by fetching it from the specified URL";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "UploadFileByURL";
    NewLine.SearchMethod = "UPLOADFILEBYURL";
    NewLine.Parameter    = "--url";
    NewLine.Description    = "URL source of the file";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "UploadFileByURL";
    NewLine.SearchMethod = "UPLOADFILEBYURL";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Save path on Dropbox";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetUploadStatusByURL";
    NewLine.SearchMethod = "GETUPLOADSTATUSBYURL";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Gets the upload status of the file by URL";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetUploadStatusByURL";
    NewLine.SearchMethod = "GETUPLOADSTATUSBYURL";
    NewLine.Parameter    = "--job";
    NewLine.Description    = "ID of the asynchronous job from the UploadFileByURL response";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DeleteObject";
    NewLine.SearchMethod = "DELETEOBJECT";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Deletes an object from the cloud drive";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DeleteObject";
    NewLine.SearchMethod = "DELETEOBJECT";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the object to delete";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DeleteObject";
    NewLine.SearchMethod = "DELETEOBJECT";
    NewLine.Parameter    = "--permanently";
    NewLine.Description    = "Delete object without the possibility of recovery (optional, def. val. - No)";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CopyObject";
    NewLine.SearchMethod = "COPYOBJECT";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Copies a file or directory to the selected path";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CopyObject";
    NewLine.SearchMethod = "COPYOBJECT";
    NewLine.Parameter    = "--form";
    NewLine.Description    = "Path to the original object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CopyObject";
    NewLine.SearchMethod = "COPYOBJECT";
    NewLine.Parameter    = "--to";
    NewLine.Description    = "Target path for the new object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "MoveObject";
    NewLine.SearchMethod = "MOVEOBJECT";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Moves an object to the selected path";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "MoveObject";
    NewLine.SearchMethod = "MOVEOBJECT";
    NewLine.Parameter    = "--form";
    NewLine.Description    = "Path to the original object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "MoveObject";
    NewLine.SearchMethod = "MOVEOBJECT";
    NewLine.Parameter    = "--to";
    NewLine.Description    = "Target path for the new object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CreateFolder";
    NewLine.SearchMethod = "CREATEFOLDER";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Creates an empty directory at the selected path";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CreateFolder";
    NewLine.SearchMethod = "CREATEFOLDER";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Target path for creating the directory";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DownloadFile";
    NewLine.SearchMethod = "DOWNLOADFILE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Downloads a file by the specified path or ID";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DownloadFile";
    NewLine.SearchMethod = "DOWNLOADFILE";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path or ID of the file";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DownloadFolder";
    NewLine.SearchMethod = "DOWNLOADFOLDER";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Downloads a zip archive with the contents of the specified directory";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DownloadFolder";
    NewLine.SearchMethod = "DOWNLOADFOLDER";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path or ID of the directory";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetObjectVersionList";
    NewLine.SearchMethod = "GETOBJECTVERSIONLIST";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Gets the list of versions (revisions) of the object";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetObjectVersionList";
    NewLine.SearchMethod = "GETOBJECTVERSIONLIST";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetObjectVersionList";
    NewLine.SearchMethod = "GETOBJECTVERSIONLIST";
    NewLine.Parameter    = "--amount";
    NewLine.Description    = "Number of the latest versions of the object to display (optional, def. val. - 10)";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "RestoreObjectToVersion";
    NewLine.SearchMethod = "RESTOREOBJECTTOVERSION";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "File and directory management";
    NewLine.MethodDescription   = "Restores object state to required version (revision)";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "RestoreObjectToVersion";
    NewLine.SearchMethod = "RESTOREOBJECTTOVERSION";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the object";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "RestoreObjectToVersion";
    NewLine.SearchMethod = "RESTOREOBJECTTOVERSION";
    NewLine.Parameter    = "--rev";
    NewLine.Description    = "ID of the version (revision) for restoration";
    NewLine.Region     = "File and directory management";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetTagList";
    NewLine.SearchMethod = "GETTAGLIST";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Tags managment";
    NewLine.MethodDescription   = "Gets the list of tags of the selected files";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetTagList";
    NewLine.SearchMethod = "GETTAGLIST";
    NewLine.Parameter    = "--paths";
    NewLine.Description    = "Path or set of paths to the files";
    NewLine.Region     = "Tags managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddTag";
    NewLine.SearchMethod = "ADDTAG";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Tags managment";
    NewLine.MethodDescription   = "Adds a new text tag to a file or directory";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddTag";
    NewLine.SearchMethod = "ADDTAG";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the object for which the tag needs to be created";
    NewLine.Region     = "Tags managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddTag";
    NewLine.SearchMethod = "ADDTAG";
    NewLine.Parameter    = "--tag";
    NewLine.Description    = "Tag text";
    NewLine.Region     = "Tags managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DeleteTag";
    NewLine.SearchMethod = "DELETETAG";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Tags managment";
    NewLine.MethodDescription   = "Deletes the text tag of a file or directory";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DeleteTag";
    NewLine.SearchMethod = "DELETETAG";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the object whose tag needs to be deleted";
    NewLine.Region     = "Tags managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "DeleteTag";
    NewLine.SearchMethod = "DELETETAG";
    NewLine.Parameter    = "--tag";
    NewLine.Description    = "Tag text";
    NewLine.Region     = "Tags managment";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "PublishFolder";
    NewLine.SearchMethod = "PUBLISHFOLDER";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Shared access settings";
    NewLine.MethodDescription   = "Sets the directory to public access mode";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "PublishFolder";
    NewLine.SearchMethod = "PUBLISHFOLDER";
    NewLine.Parameter    = "--path";
    NewLine.Description    = "Path to the target directory";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CancelFolderPublication";
    NewLine.SearchMethod = "CANCELFOLDERPUBLICATION";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Shared access settings";
    NewLine.MethodDescription   = "Cancels the public access mode for the directory";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CancelFolderPublication";
    NewLine.SearchMethod = "CANCELFOLDERPUBLICATION";
    NewLine.Parameter    = "--folder";
    NewLine.Description    = "ID of the public catalog (shared folder ID)";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFile";
    NewLine.SearchMethod = "ADDUSERSTOFILE";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Shared access settings";
    NewLine.MethodDescription   = "Defines access to the file for an external user";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFile";
    NewLine.SearchMethod = "ADDUSERSTOFILE";
    NewLine.Parameter    = "--fileid";
    NewLine.Description    = "ID of the file to be accessed";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFile";
    NewLine.SearchMethod = "ADDUSERSTOFILE";
    NewLine.Parameter    = "--emails";
    NewLine.Description    = "List of email addresses of users being added";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFile";
    NewLine.SearchMethod = "ADDUSERSTOFILE";
    NewLine.Parameter    = "--readonly";
    NewLine.Description    = "Prohibits file editing for the external user (optional, def. val. - Да)";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFolder";
    NewLine.SearchMethod = "ADDUSERSTOFOLDER";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Shared access settings";
    NewLine.MethodDescription   = "Grants external users access to the directory";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFolder";
    NewLine.SearchMethod = "ADDUSERSTOFOLDER";
    NewLine.Parameter    = "--folder";
    NewLine.Description    = "ID of the public catalog (shared folder ID)";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFolder";
    NewLine.SearchMethod = "ADDUSERSTOFOLDER";
    NewLine.Parameter    = "--emails";
    NewLine.Description    = "List of email addresses of users being added";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "AddUsersToFolder";
    NewLine.SearchMethod = "ADDUSERSTOFOLDER";
    NewLine.Parameter    = "--readonly";
    NewLine.Description    = "Prohibits file editing for the external user (optional, def. val. - Да)";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetAsynchronousChangeStatus";
    NewLine.SearchMethod = "GETASYNCHRONOUSCHANGESTATUS";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Shared access settings";
    NewLine.MethodDescription   = "Gets the status of the asynchronous access change job";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "GetAsynchronousChangeStatus";
    NewLine.SearchMethod = "GETASYNCHRONOUSCHANGESTATUS";
    NewLine.Parameter    = "--job";
    NewLine.Description    = "AsynchronousJobID";
    NewLine.Region     = "Shared access settings";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CancelFilePublication";
    NewLine.SearchMethod = "CANCELFILEPUBLICATION";
    NewLine.Parameter    = "--token";
    NewLine.Description    = "Token";
    NewLine.Region     = "Shared access settings";
    NewLine.MethodDescription   = "Prohibits access to the file for external users";


    NewLine = TableСоwithтаinа.Add();
    NewLine.Library  = "dropbox";
    NewLine.Module      = "OPI_Dropbox";
    NewLine.Method       = "CancelFilePublication";
    NewLine.SearchMethod = "CANCELFILEPUBLICATION";
    NewLine.Parameter    = "--fileid";
    NewLine.Description    = "ID of the file to be accessed";
    NewLine.Region     = "Shared access settings";

    Return TableСоwithтаinа;
EndFunction

