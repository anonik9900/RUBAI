# Installare la libreria HTTParty
# esegui "gem install httparty" sulla riga di comando
require 'httparty'


# Definire l'API endpoint
endpoint = "https://api.openai.com/v1/engines/davinci/completions"

# Definire la chiave API
api_key = "api_key"


# Chiedere all'utente di inserire la domanda
puts "Dimmi un detto e lo completerò"
prompt = gets.chomp

# Definire il prompt
#prompt = "divina commedia"

# Definire le opzioni per la richiesta
options = {
  prompt: prompt,
  max_tokens: 100,
  n: 1,
  stop: "",
  temperature: 0.5,
}


# Stampa la risposta

#puts response.parsed_response["choices"][0]["text"]


headers = { "Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json" }

response = HTTParty.post(endpoint, headers: headers, body: options.to_json)


puts response.parsed_response["choices"][0]["text"]






# Stampa la risposta completa
#puts response.parsed_response

# Stampa la risposta
#puts response.parsed_response["choices"][0]["text"]
