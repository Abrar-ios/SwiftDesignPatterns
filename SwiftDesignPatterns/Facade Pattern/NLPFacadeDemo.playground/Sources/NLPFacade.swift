import Foundation
import NaturalLanguage

public class NLPFacade {
    private static let tagger = NLTagger(tagSchemes: [NLTagScheme.lexicalClass])
    public class func dominantLanguage(string: String) -> String? {
        let lanugage = NLLanguageRecognizer.dominantLanguage(for: string)
        return lanugage?.rawValue
    }
    
    public struct WordLexicalClassPair: CustomStringConvertible {
        let word: String
        let lexicalClass: String
        
        public var description: String {
            return "\"\(word)\":\"\(lexicalClass)\""
        }
    }
    
    public class func partsOfSpeech(for text: String) -> [WordLexicalClassPair] {
        var result = [WordLexicalClassPair]()
        tagger.string = text;
        tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: NLTokenUnit.word, scheme: NLTagScheme.lexicalClass, options: [.omitWhitespace, .omitPunctuation]){(tag, range) -> Bool in
            let wordLexicalClass = WordLexicalClassPair(word: String(), lexicalClass: tag?.rawValue ?? "unknown")
            result.append(wordLexicalClass)
            return true
        }
        return result
    }
}
