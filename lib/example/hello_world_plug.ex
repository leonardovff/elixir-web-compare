defmodule Greeter do
    def createList(list, i) when i <= 0 do
        list
    end 
    def createList(list, i) do
        createList(list ++ [:rand.uniform(100000000)], i-1)
    end
end

defmodule Example.HelloWorldPlug do
  import Plug.Conn

  def init(options), do: options
  def call(conn, _opts) do
    Enum.join(Enum.sort(Greeter.createList([], 15000)))
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, '{"teste": "oi"}')
  end
end
