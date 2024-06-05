﻿---
sidebar_position: 7
---

# DeleteSelection
 Deletes the selection by ID


*Function DeleteSelection(Val Selection, Val Parameters = "") Export*

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | Selection | --sel | String | Selection ID |
 | Parameters | --auth | Structure Of String | Authorization JSON or path to .json |

 
 Returns: Key-Value Pair - Serialized JSON response from VK

```bsl title="Code example"
	
 
 Response = OPI_VK.DeleteSelection(40, Parameters);
 Response = OPI_Tools.JSONString(Response);
 

	
```

```sh title="CLI command example"
 
 oint vk DeleteSelection --sel %sel% --auth %auth%

```


```json title="Result"

{
 "response": 1
 }

```