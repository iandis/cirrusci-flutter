FROM cirrusci/flutter:2.10.5

RUN flutter precache
# Install Required Android SDKs
RUN sdkmanager --update --verbose 
RUN sdkmanager "platforms;android-28" "platforms;android-29" "platforms;android-31" "platforms;android-32"