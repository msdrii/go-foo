package main

import (
	"net/http"
	"github.com/labstack/echo/v4"
)

func main() {
	// Echoのインスタンスを作成
	e := echo.New()

	// ルートパスにアクセスがあった場合の処理
	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, Echo!")
	})

	// サーバーを開始
	e.Start(":8080")
}
