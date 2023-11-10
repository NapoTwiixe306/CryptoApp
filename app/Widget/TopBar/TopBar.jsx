// TopBar.js
import { Text, View } from "react-native";
import React from "react";
import { FontAwesome } from "@expo/vector-icons";
import { Link } from "expo-router";

import styles from "./TopBarStyles";

export default function TopBar() {
  return (
    <>
    
      <View style={styles.container}>
        <View style={styles.radius}>
            
        </View>
        <View style={styles.titleContainer}>
          <Text style={styles.title}>CryptoExtension</Text>
        </View>
        <View>
          <Link
            style={styles.tab}
            href="/Components/Notifications/Notifications"
          >
            <View>
              <FontAwesome
                name="bell"
                size={15}
                style={[styles.icon, { color: "white" }]}
              />
            </View>
          </Link>
        </View>
      </View>
    </>
  );
}
