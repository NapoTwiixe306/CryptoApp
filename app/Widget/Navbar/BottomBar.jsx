import React from "react";
import { View, Text } from "react-native";
import { Link } from "expo-router";
import { FontAwesome } from "@expo/vector-icons";
import styles from "./BottomBarStyle";

export default function BottomBar() {
  return (
    <View style={styles.container}>
      <Link style={styles.tab} href="/Components/HomePages/HomePages">
        <View
          style={{ flex: 1, alignItems: "center", justifyContent: "center" }}
        >
          <FontAwesome name="home" size={24} style={styles.icon} />
          <Text style={styles.tabText}>Home</Text>
        </View>
      </Link>
      <Link style={styles.tab} href="/Components/CryptoList/CryptoList">
        <View
          style={{ flex: 1, alignItems: "center", justifyContent: "center" }}
        >
          <FontAwesome name="btc" size={24} style={styles.icon} />
          <Text style={styles.tabText}>Crypto</Text>
        </View>
      </Link>
      <Link style={styles.tab} href="/Components/Login/Login">
        <View
          style={{ flex: 1, alignItems: "center", justifyContent: "center" }}
        >
          <FontAwesome name="user" size={24} style={styles.icon} />
          <Text style={styles.tabText}>Login</Text>
        </View>
      </Link>
      <Link style={styles.tab} href="/Components/Settings/Settings">
        <View
          style={{ flex: 1, alignItems: "center", justifyContent: "center" }}
        >
          <FontAwesome name="cog" size={24} style={styles.icon} />
          <Text style={styles.tabText}>Settings</Text>
        </View>
      </Link>
    </View>
  );
}
