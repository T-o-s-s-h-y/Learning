package main

import "fmt"

func main() {
	totalScore := 0
	ask(1, "dog")
	ask(2, "cat")
	ask(3, "fish")

	fmt.Println("スコア", totalScore)
}

func ask(number int, question string) {
	var input string
	fmt.Printf("[質問%d] 次の単語を入力してください: %s\n", number, question)
	fmt.Scan(&input)

	if question == input {
		fmt.Println("正解!")
		// totalScoreに10を加算代入してください
		totalScore += 10
		
	} else {
		fmt.Println("不正解!")
	}
}