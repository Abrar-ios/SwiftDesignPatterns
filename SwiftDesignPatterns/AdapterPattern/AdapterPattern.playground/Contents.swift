protocol PaymentGateway {
    func receivePayment(amount: Double)
    var totalPayments: Double {get}
}

class PayPal: PaymentGateway {
    private var total = 0.0
    
    func receivePayment(amount: Double) {
        total += total;
    }
    
    var totalPayments: Double {
        print("total payments received by paypal:\(total)")
        return total
    }
}

class Stripe: PaymentGateway {
    private var total = 0.0
    
    func receivePayment(amount: Double) {
        total += total
    }
    
    var totalPayments: Double {
        print("total payments received by stripe:\(total)")
        return total
    }
}
