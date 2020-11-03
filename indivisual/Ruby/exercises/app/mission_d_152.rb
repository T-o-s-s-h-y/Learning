=begin
  ある文字列にRが指定した数以上含まれているかチェックする。
=end

class MissionD152
  def run
    # 対象文字列
    str = STDIN.gets
    # 判定する数
    check = STDIN.gets.to_i
    # 指定数以上含まれているか
    puts str.count('R') >= check ? 'Yes' : 'No'
  end
end
