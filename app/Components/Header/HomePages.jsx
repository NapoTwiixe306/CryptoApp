import { StyleSheet, Text, View } from 'react-native'
import React from 'react'
import { Link } from 'expo-router'

export default function HomePages() {
  return (
    <View>
      <Text>HomePages</Text>
      <Link href="/Components/Contact/Contact">Contact</Link>

    </View>
  )
}

const styles = StyleSheet.create({})