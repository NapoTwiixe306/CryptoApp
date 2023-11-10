import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  container: {
    height: 50,
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    color: "white",
  },
  radius: {
    position: 'relative',
    left: 10,
    width: 40,
    height: 40,
    borderRadius: 25,
    backgroundColor: '#CAD5E2',
    justifyContent: "center",
    alignItems: "center",
  },
  titleContainer: {
    flex: 1, 
    justifyContent: 'center'
  },
  title: {
    fontWeight: "bold",
    color: "white",
    fontSize: 20,
    textAlign: "center",
},
  tab: {
    position: 'relative',
    right: 20,
  },
});

export default styles;
