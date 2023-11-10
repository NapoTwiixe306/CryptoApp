import { Text, View, ScrollView } from "react-native";
import React from "react";
import styles from "./HomePagesStyle";
import BottomBar from "../../Widget/Navbar/BottomBar";
import HorizontalCard from "../../Widget/HorizontalCard/HorizontalCard";

export default function HomePages() {
  return (
    <>
      <ScrollView style={styles.scrollContainer}>
        <View style={styles.parent}>
          <View style={styles.container}>
            <Text style={styles.title}>Title + Images</Text>
          </View>
        </View>
        <HorizontalCard />
        <View style={styles.parent}>
          <View style={styles.container}>
            <Text style={styles.title}>CryptoBank + Card</Text>
          </View>
        </View>
      </ScrollView>
      <BottomBar />
    </>
  );
}
