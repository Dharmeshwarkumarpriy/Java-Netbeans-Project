# Step 1: Build phase (Maven का इस्तेमाल करके प्रोजेक्ट बिल्ड करने के लिए)
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Step 2: Run phase (सिर्फ JAR फाइल को रन करने के लिए, जिससे साइज छोटा रहे)
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
