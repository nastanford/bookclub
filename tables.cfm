
<cfset datasrc = "cfbookclub"> 
<cfdbinfo type="tables" datasource="#datasrc#" name="tables"> 
<cfdump var="#tables#">


<!---
  AUTHORID	
  BOOKDESCRIPTION	
  BOOKID	
  BOOKIMAGE	
  GENRE	
  ISSPOTLIGHT	
  THUMBNAILIMAGE	
  TITLE
--->

