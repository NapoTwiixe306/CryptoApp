import { Text, View } from "react-native";
import React from "react";
import BottomBar from "../../Widget/Navbar/BottomBar";
import HorizontalCard from "../../Widget/HorizontalCard/HorizontalCard";

export default function Settings() {
  return (
    <>
      <BottomBar />
      <View>
        <Text>Settings</Text>
      </View>
    </>
  );
}
