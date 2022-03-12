# international_debt

In the United States, the National Debt Clock serves as an ongoing reminder of the now multi-trillion-dollar debt that the country bears, but the U.S. is not the only country to owe significant debts. In fact, many countries have taken out debt from the World Bank, and in this project I investigate questions such as how much the total amount of international debt is (in U.S. Dollars), which country owes the most debt, and how much each country owes, on average, across different debt indicators.

The database contains one main table:
<h3 id="international_debt"><code>international_debt</code></h3>
<table>
<thead>
<tr>
<th style="text-align:left;">column</th>
<th>type</th>
<th>meaning</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;"><code>country_name</code></td>
<td>varchar</td>
<td>Name of the country</td>
</tr>
<tr>
<td style="text-align:left;"><code>country_code</code></td>
<td>char</td>
<td>Abbreviation of the country's name</td>
</tr>
<td style="text-align:left;"><code>indicator_name</code></td>
<td>varchar</td>
<td>Description of the type of debt that the country owes</td>
</tr>
<tr>
<td style="text-align:left;"><code>indicator_code</code></td>
<td>varchar</td>
<td>Code that refers to the respective type of debt that the country owes</td>
</tr>
<tr>
<td style="text-align:left;"><code>debt</code></td>
<td>numeric</td>
<td>Amount owed for the respective type of debt</td>
</tr>
<tr>
</tbody>
</table>


There are 124 countries in the dataset, and their combined debt to the World Bank totals approximately $3 trillion. (By comparison, as of early March 2022, the U.S. national debt is just over $30 trillion.) The country with the highest debt is China, which owes roughly $286 billion. Of the various debt indicators, principal repayments on long-term external debt (DT.AMT.DLXF.CD) are the single largest category. For this particular indicator, China once again owes the most. Common debt categories among all countries include public and publicly guaranteed (PPG) debt from official creditors (DT.INT.OFFT.CD, debt from international organizations and governments) and interest payments on long-term external debt (DT.INT.DLXF.CD). Of the countries that owe the most debt in any one category, China leads with $96 billion for repaying long-term debt, followed by Brazil, which owes $90 billion in the same area.

Created as part of the DataCamp project <a href="https://app.datacamp.com/learn/projects/754">"Analyze International Debt Statistics"</a> by Sayak Paul.
