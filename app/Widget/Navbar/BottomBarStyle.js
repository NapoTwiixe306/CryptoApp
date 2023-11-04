import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    height: 80,
    backgroundColor: 'white',
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
  },
  tab: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  tabContent: {
    flex: 1,

    alignItems: 'center',
    justifyContent: 'center',
  },
  tabText: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    color: 'black',
    textAlign: 'center',
  },
  icon: {
    color: 'black',
    fontSize: 25
  },
});

export default styles;
