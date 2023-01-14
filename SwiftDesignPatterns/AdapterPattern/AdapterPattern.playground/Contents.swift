protocol PaymentGateway {
    func receivePayment(amount: Double)
    var totalPayments: Double {get}
}

class PayPal: PaymentGateway {
    private var total = 0.0
    
    func receivePayment(amount: Double) {
        total += amount;
    }
    
    var totalPayments: Double {
        print("total payments received by paypal:\(total)")
        return total
    }
}

class Stripe: PaymentGateway {
    private var total = 0.0
    
    func receivePayment(amount: Double) {
        total += amount
    }
    
    var totalPayments: Double {
        print("total payments received by stripe:\(total)")
        return total
    }
}

let paypal = PayPal()
paypal.receivePayment(amount: 100)
paypal.receivePayment(amount: 200)
paypal.receivePayment(amount: 300)

let stripe = Stripe()
stripe.receivePayment(amount: 200)
stripe.receivePayment(amount: 50)
stripe.receivePayment(amount: 250)

var paymentGateways: [PaymentGateway] = [paypal, stripe]

var total = 0.0

for gateway in paymentGateways {
    total += gateway.totalPayments
}

print(total)


// third class that doesn't conform to PaymentGateway

class AmazonPayments {
    var payments: Double = 0.0
    
    func paid(value: Double, currency:String){
        payments += value
        print("Paid \(currency)\(value) via Amazon Payments")
    }
    
    func fullfilledTransection() -> Double {
        return payments
    }
}

extension AmazonPayments: PaymentGateway {
    func receivePayment(amount: Double) {
        amazonPayment.paid(value: 23.56, currency: "USD")
    }
    
    var totalPayments: Double {
        let total = amazonPayment.payments
        print("Total payments received via Amazon Payments:\(total)")
        return total
    }
}

let amazonPayment = AmazonPayments()
amazonPayment.receivePayment(amount: 456)
amazonPayment.receivePayment(amount: 435)

paymentGateways.append(amazonPayment)

var totalCollection = 0.0
for gateway in paymentGateways {
    totalCollection += gateway.totalPayments
}

print(totalCollection)
