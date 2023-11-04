import React from 'react';
import { StyleSheet } from 'react-native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import HomePages from '../HomePages/HomePages';
import Contact from '../Contact/Contact';
import About from '../About/About';

const Tab = createBottomTabNavigator();

export default function Header() {
  return (
    <Tab.Navigator style={styles.container}>
      <Tab.Screen name="Home" component={HomePages} />
      <Tab.Screen name="Contact" component={Contact} />
      <Tab.Screen name="About" component={About} />
    </Tab.Navigator>
  );
}

const styles = StyleSheet.create({
  container: {
    position: "absolute",
    bottom: 0
  }
})