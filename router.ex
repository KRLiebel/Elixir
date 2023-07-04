defmodule Fizzbuzz_AppWeb.Router do
  use Fizzbuzz_AppWeb, :router

# Criando rotas

  scope "/", Fizzbuzz_AppWeb do
    pipe_through :browser

    get "/fizzbuzz", PageController, :fizzbuzz
    get "/fizz", PageController, :fizz
    get "/buzz", PageController, :buzz
    get "/other", PageController, :other
  end
end

