import React from 'react';
import { View, Text, TouchableOpacity } from 'react-native';
import { Link } from 'expo-router';
import { FontAwesome } from '@expo/vector-icons';
import styles from './BottomBarStyle';

export default function BottomBar() {
  return (
    <View style={styles.container}>
      <Link style={styles.tab} href="/Components/HomePages/HomePages">
        <View style={{flex: 1, alignItems: "center", justifyContent: "center"}}>
          <FontAwesome name="home" size={24} style={styles.icon} />
          <Text style={styles.tabText}>Home</Text>
        </View>
      </Link>
      <Link style={styles.tab} href="/Components/Contact/Contact">
        <View style={{flex: 1, alignItems: "center", justifyContent: "center"}}>
          <FontAwesome name="phone" size={24} style={styles.icon} />
          <Text style={styles.tabText}>Contact</Text>
        </View>
      </Link>
      <Link style={styles.tab} href="/Components/About/About">
        <View style={{flex: 1, alignItems: "center", justifyContent: "center"}}>
          <FontAwesome name="info-circle" size={24} style={styles.icon} />
          <Text style={styles.tabText}>About</Text>
        </View>
      </Link>
      <Link style={styles.tab} href="/Components/Login/Login">
        <View style={{flex: 1, alignItems: "center", justifyContent: "center"}}>
          <FontAwesome name="user" size={24} style={styles.icon} />
          <Text style={styles.tabText}>Login</Text>
        </View>
      </Link>
    </View>
  );
}