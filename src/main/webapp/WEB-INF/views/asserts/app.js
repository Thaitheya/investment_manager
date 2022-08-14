/**
 * 
 */
 
 const options = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Key': '438afbd241msh4f23dc0c4f65d47p1412b0jsne66dee373eec',
		'X-RapidAPI-Host': 'stock-price4.p.rapidapi.com'
	}
};

fetch('https://stock-price4.p.rapidapi.com/price/TSLA', options)
	.then(response => response.json())
	.then(response => console.log(response))
	.catch(err => console.error(err));