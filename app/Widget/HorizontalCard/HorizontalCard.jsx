import { Text, View, ScrollView } from "react-native";
import React from "react";

import styles from "./HorizontalCardStyles";

const items = [
  {
    name: "Tape",
  },
  {
    name: "on",
  },
  {
    name: "me",
  },
  {
    name: "Tape",
  },
  {
    name: "on",
  },
  {
    name: "me",
  },
];

export default function HorizontalCard() {
  return (
    <View>
      <ScrollView
        horizontal={true}
        showsHorizontalScrollIndicator={false}
        style={styles.parent}
      >
        {items.map((item, index) => (
          <View key={index} style={[styles.card, styles.cardElevated]}>
            <Text>{item.name}</Text>
          </View>
        ))}
      </ScrollView>
    </View>
  );
}
