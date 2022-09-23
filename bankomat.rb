# WELCOME AND PASSWORD

puts "Добро пожаловать! Введите четырехзначный пароль банковской карты на экране снизу:"
guessed_it = false
password = 7185
password_input = gets.to_i
until guessed_it 
	if password == password_input
		puts "-----------------------------------------"
		puts "Добро пожаловать!"
		guessed_it = true
	else
		puts "Вы ввели неверный пароль!\nПовторите попытку!"
		password_input = gets. to_i
    end
end
	

#MONEY TRANSACTIONS

puts "Введите баланс своей банковской карты (кратный 5)"
balance = gets.to_i
puts "-----------------------------------------"
action_with_money = true
puts "Выберите следующее действие:"

amount_5 = 20
amount_10 = 20
amount_50 = 10
amount_100 = 5

while action_with_money
	puts "Введите 1 для просмотра баланса\nВведите 2 для внесения наличных\nВведите 3 для снятия наличных\nВведите 4 для просмотра количества купюр в банкомате\nВведите 5 для завершения программы"
	action_balance = gets.to_i
	
	if action_balance == 1
		puts "-----------------------------------------"
		puts "Ваш баланс = #{balance} "
		puts "-----------------------------------------"
	
	elsif action_balance == 2 
		puts "-----------------------------------------"
		puts "Введите сумму, которую Вы хотите внести (возможно внести только 5, 10, 50 или 100 рублей)"
		vnesenie = gets.to_i
		action_vnesenie = true
		while action_vnesenie == true

			if vnesenie == 5  
				puts "-----------------------------------------"
				puts "Денежные средства успешно зачислены. Ваш баланс:" 
				puts vnesenie + balance
				puts "-----------------------------------------"
				balance = vnesenie +  balance
				amount_5 = amount_5 + 1
				action_vnesenie = false
			elsif vnesenie == 10
				puts "-----------------------------------------"
				puts "Денежные средства успешно зачислены. Ваш баланс:" 
				puts vnesenie + balance
				puts "-----------------------------------------"
				balance = vnesenie +  balance
				amount_10 = amount_10 + 1
				action_vnesenie = false
			elsif vnesenie == 50
				puts "-----------------------------------------"
				puts "Денежные средства успешно зачислены. Ваш баланс:" 
				puts vnesenie + balance
				puts "-----------------------------------------"
				balance = vnesenie +  balance
				amount_50 = amount_50 + 1
				action_vnesenie = false
			elsif vnesenie == 100
				puts "-----------------------------------------"
				puts "Денежные средства успешно зачислены. Ваш баланс:" 
				puts vnesenie + balance
				puts "-----------------------------------------"
				balance = vnesenie +  balance
				amount_100 = amount_100 + 1
				action_vnesenie = false
			else
				puts "Вы ввели некоректную сумму! Повторите попытку."
				vnesenie = gets.to_i
			end
		end


	elsif action_balance == 3
		puts "-----------------------------------------"
		puts "Введите сумму, которую Вы хотите снять:"	
		snyatie = gets.to_i
		count_operations = 0
    balance_local = balance
    amount_5_local = amount_5
		amount_10_local = amount_10
		amount_50_local = amount_50
		amount_100_local = amount_100
    
    if snyatie % 5 != 0 or balance_local < snyatie
      puts "Недостаточно средств"
    else
      while snyatie > 0 and (amount_100_local > 0 or amount_50_local > 0 or amount_10_local > 0 or amount_5_local > 0)
        if snyatie - 100 >= 0 and amount_100_local > 0
					balance_local = balance_local - 100
					amount_100_local = amount_100_local - 1
					snyatie = snyatie - 100
          count_operations = count_operations + 1
          if snyatie == 0
						puts "Снятие произошло успешно! Заберите сумму!"
						puts "-----------------------------------------"
						puts "Ваш баланс = #{balance_local}"
            end
        elsif snyatie - 50 >= 0 and amount_50_local > 0
					balance_local = balance_local - 50
					amount_50_local = amount_50_local - 1
					snyatie = snyatie - 50
					count_operations = count_operations + 1
          if snyatie == 0
						puts "Снятие произошло успешно! Заберите сумму!"
						puts "-----------------------------------------"
						puts "Ваш баланс = #{balance_local}"
            end
				elsif snyatie - 10 >= 0 and amount_10_local > 0
					balance_local = balance_local - 10
					amount_10_local = amount_10_local - 1
					snyatie = snyatie - 10
					count_operations = count_operations + 1
					if snyatie == 0
						puts "Снятие произошло успешно! Заберите сумму!"
						puts "-----------------------------------------"
						puts "Ваш баланс = #{balance_local}"
          end
				elsif snyatie - 5 >= 0 and amount_5_local > 0
					balance_local = balance_local - 5
					amount_5_local = amount_5_local - 1
					snyatie = snyatie - 5
					count_operations = count_operations + 1
          if snyatie == 0
						puts "Снятие произошло успешно! Заберите сумму!"
						puts "-----------------------------------------"
						puts "Ваш баланс = #{balance_local}"
          end
        end
      end
			if count_operations == 0 or snyatie != 0
				puts "В банкомате недосаточно необходимых купюр, чтобы выдать сумму!"
				puts "-----------------------------------------"
      else
				balance = balance_local
				amount_5 = amount_5_local
				amount_10 = amount_10_local
				amount_50= amount_50_local
				amount_100 = amount_100_local
			end
		end
	
	elsif action_balance == 4
		puts "-----------------------------------------"
		puts "В настоящий момент в банкомате находится:"
		puts "#{amount_5} - пятирубевых купюр\n#{amount_10} - десятирублевых купюр\n#{amount_50} - пятидесятирублевых купюр\n#{amount_100} - сторублевых купюр"
		puts "-----------------------------------------"

	else action_balance == 5
	puts "-----------------------------------------"
	abort "До скорых встреч!"
	puts "-----------------------------------------"	
	end
end
