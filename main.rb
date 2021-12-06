module LambdaFunction
  class Handler
    def self.process(event:, context:, callback:)
      html = `<!DOCTYPE html><p>Welcome to Nullstone!</p>`
      callback(null, html)
    end
  end
end
