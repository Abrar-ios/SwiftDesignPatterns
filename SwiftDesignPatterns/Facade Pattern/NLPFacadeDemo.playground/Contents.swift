let text = "The Facade is simple yet useful"
print(text)

let language = NLPFacade.dominantLanguage(string: text)
print(language ?? "unknow")

let partsOfSpeech = NLPFacade.partsOfSpeech(for: text)
print(partsOfSpeech)
