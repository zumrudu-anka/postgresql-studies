Select name, department,
	case
		when department = 1
			then 'Mekatronik Mühendisliği'
		when department = 2
			then 'Yazılım Mühendisliği'
		when department = 3
			then 'Bilgisayar Mühendisliği'
		when department = 4
			then 'Makina Mühendisliği'
		else 'Default'
	End "Result Column Name"
	from lesson
	order by id;