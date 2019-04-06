defmodule Greeter do
    def createList(i) do
      Enum.map(Enum.to_list(1..i), &(&1 * Enum.random(1..1000000)))
    end
end

defmodule Example.HelloWorldPlug do
  import Plug.Conn

  def init(options), do: options
  def call(conn, _opts) do
    Enum.sort(Greeter.createList(2000000))
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, '{"teste": "oi"}')
  end
end
