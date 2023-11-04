import { StyleSheet, Text, View } from 'react-native'
import React from 'react'
import { Link } from 'expo-router'
import BottomBar from '../../Widget/Navbar/BottomBar'

export default function HomePages() {
  return (
    <>
      <BottomBar/>
      <View>
        <Text>HomePages</Text>
      </View>
    </>
  )
}

const styles = StyleSheet.create({})