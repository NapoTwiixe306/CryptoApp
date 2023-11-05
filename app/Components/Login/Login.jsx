import { Text, View, TextInput, Button } from "react-native";
import React, { useState } from "react";
import BottomBar from "../../Widget/Navbar/BottomBar";
import styles from "./LoginStyles";
export default function Login() {
  const [name, setName] = useState("");
  const [password, setPassword] = useState("");
  return (
    <>
      <View style={styles.parent}>
        <View style={styles.container}>
          <Text style={styles.title}>Login</Text>
          <TextInput
            style={styles.input}
            placeholder="Enter your name..."
            placeholderTextColor="white"
            onChangeText={setName}
          />
          <TextInput
            style={styles.input}
            placeholder="Enter your password..."
            placeholderTextColor="white"
            onChangeText={setPassword}
          />
          <Text style={styles.text}>Name: {name}</Text>
          <Text style={styles.text}>Password: {password}</Text>
        </View>
      </View>
      <BottomBar />
    </>
  );
}
