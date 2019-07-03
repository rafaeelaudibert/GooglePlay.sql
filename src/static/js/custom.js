jQuery(document).ready(function() {
	
	"use strict";
	// Your custom js code goes here.

	
	// Query 1 parsing
	$('#query-1-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${name}"},
				{"tag": "td", "html": "${function}"}
			]
		};

		const {data} = await $.ajax({
			url: './vision_query_1',
			method: 'POST',
			dataType: "json"
		});

		$('#query-1-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 2 parsing
	$('#query-2-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${album_name}"},
				{"tag": "td", "html": "${artist_name}"}
			]
		};

		const input_field = document.getElementById('input-query-2');

		const {data} = await $.ajax({
			url: './vision_query_2/' + input_field.value,
			method: 'POST',
			dataType: "json"
		});

		$('#query-2-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 3 parsing
	$('#query-3-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${name}"},
				{"tag": "td", "html": "${email}"},
				{"tag": "td", "html": "${downloads_count}"}
			]
		};


		const {data} = await $.ajax({
			url: './normal_query_1',
			method: 'POST',
			dataType: "json"
		});

		$('#query-3-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 4 parsing
	$('#query-4-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${name}"},
				{"tag": "td", "html": "${movie_name}"}
			]
		};

		const input_field = document.getElementById('input-query-4');

		const {data} = await $.ajax({
			url: 'normal_query_2/' + input_field.value,
			method: 'POST',
			dataType: "json"
		});

		$('#query-4-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 5 parsing
	$('#query-5-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${user_name}"},
				{"tag": "td", "html": "${date}"},
				{"tag": "td", "html": "${book_name}"}
			]
		};

		const input_field = document.getElementById('input-query-5');

		const {data} = await $.ajax({
			url: 'normal_query_3/' + input_field.value,
			method: 'POST',
			dataType: "json"
		});

		$('#query-5-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 6 parsing
	$('#query-6-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${developer_name}"},
				{"tag": "td", "html": "${download_count}"}
			]
		};

		const {data} = await $.ajax({
			url: './special_query_1',
			method: 'POST',
			dataType: "json"
		});

		$('#query-6-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 7 parsing
	$('#query-7-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${album_name}"},
				{"tag": "td", "html": "${artist_name}"}
			]
		};

		const {data} = await $.ajax({
			url: './special_query_2',
			method: 'POST',
			dataType: "json"
		});

		$('#query-7-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 8 parsing
	$('#query-8-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${email}"}
			]
		};

		const input_field = document.getElementById('input-query-8');

		const {data} = await $.ajax({
			url: 'special_query_3/' + input_field.value,
			method: 'POST',
			dataType: "json"
		});

		$('#query-8-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 9 parsing
	$('#query-9-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${item_name}"},
				{"tag": "td", "html": "${category_name}"},
				{"tag": "td", "html": "${category_item_type}"}
			]
		};

		const {data} = await $.ajax({
			url: './pre_trigger_query',
			method: 'POST',
			dataType: "json"
		});

		$('#query-9-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

	// Query 10 parsing
	$('#query-10-run').click(async () => {
		
		const transform = {
			"tag": "tr", "children": [
				{"tag": "td", "html": "${row_count}"},
				{"tag": "td", "html": "${status}"},
				{"tag": "td", "html": "${error}"}
			]
		};

		const input_uuid = document.getElementById('input-insert-1');
		const input_category_name = document.getElementById('input-insert-2');
		const input_category_type = document.getElementById('input-insert-3');

		const {data} = await $.ajax({
			url: `./add_categorization/${input_uuid.value}/${input_category_name.value}/${input_category_type.value}`,
			method: 'POST',
			dataType: "json"
		});

		$('#query-10-table-body').html(json2html.transform(data, transform)).parent().removeClass('hidden');
	});

});