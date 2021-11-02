<cfquery name="books" datasource="cfbookclub">
  SELECT Title,Genre,BOOKDESCRIPTION as Descriptioni
  FROM BOOKS 
</cfquery>

<cfoutput>
  #serializeJSON(books)#
</cfoutput>
