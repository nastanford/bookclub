
async function loadIntoTable(url, table) {
  const tableHead = table.querySelector('thead');
  const tableBody = table.querySelector('tbody');
  const response = await fetch(url);
  const { COLUMNS, DATA} = await response.json();

  // Clear the table
  tableHead.innerHTML = '<tr></tr>';
  tableBody.innerHTML = '';

  // Populate the headers
  for(const headerText of COLUMNS) {
    const header = document.createElement('th');
    header.innerText = headerText;
    tableHead.querySelector('tr').appendChild(header);
  }

  // Populate the rows
  for(const row of DATA) { 
    const rowElement = document.createElement('tr');
    for(const cell of row) {
      const cellElement = document.createElement('td');
      cellElement.innerText = cell;
      rowElement.appendChild(cellElement);
    }
    tableBody.appendChild(rowElement);
  }


}

loadIntoTable('./data.cfm', document.querySelector('#myTable'));