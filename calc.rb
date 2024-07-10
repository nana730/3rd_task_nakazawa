 #when1の時の処理をevaluationでまとめる
 def evaluation
    puts "1から5で評価を入力してください"
    point = gets.to_i
    while true
      if point <= 0 || point > 5
        puts "1から5で評価を入力してください"
        point = gets.to_i
      else
      puts "コメントを入力してください"
      comment = gets.chomp
      post = "ポイント:#{point} コメント:#{comment}"
      File.open("data.txt","a") do |comments|
        comments.puts(post)
      end
      break
      end
    end
  end
  #when2の処理をall_resultでまとめる
  def all_result
    puts "これまでの結果"
    File.open("data.txt","r") do |comments_evaluation_file|
      comments_evaluation_file.each_line do |file|
      puts file
      end
    end
  end
 #numで取得した値がwhenに当てはまるか
  while true
    puts "実施したい処理を選択してください"
    puts "1:評価ポイントとコメントを入力してください"
    puts "2:今までの結果を確認する"
    puts "3:終了する"
    num = gets.to_i
  
  case num
  when 1
    evaluation
  when 2
    all_result
  when 3
    puts "終了します"
  break
  else
    puts "1から3で入力してください"
  end
end



