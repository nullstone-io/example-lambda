FROM amazon/aws-lambda-ruby:2.7

WORKDIR ${LAMBDA_TASK_ROOT}

# Copy function code
COPY app.rb .

# Copy dependency management file
COPY Gemfile .

# Install dependencies under LAMBDA_TASK_ROOT
ENV GEM_HOME=${LAMBDA_TASK_ROOT}
RUN bundle install

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "app.LambdaFunction::Handler.process" ]
